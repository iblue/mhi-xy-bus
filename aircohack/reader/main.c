/*
 * Demonstration on how to redirect stdio to UART
 *
 * http://appelsiini.net/2011/simple-usart-with-avr-libc
 *
 * To compile and upload run: make clean; make; make program;
 * Connect to serial with: screen /dev/tty.usbserial-*
 *
 * Copyright 2011 Mika Tuupola
 *
 * Licensed under the MIT license:
 *   http://www.opensource.org/licenses/mit-license.php
 *
 */

#include <stdio.h>
#include <util/delay.h>
#include <avr/io.h>
#include <avr/interrupt.h>

#include "main.h"
#include "uart.h"
#include "ringbuffer.h"
#include "panic.h"

/*
 * Low edge is connected to INT0 (pin D2)
 * High edge is connected to INT1 (pin D3)
 */

static inline void start_charge_pump(void);

int main(void) {
  // Disable interrupts until we are done initializing.
  cli();

  uart_init();
  stdout = &uart_output;
  stdin  = &uart_input;

  puts("UART initialized.");

  // Set up interupt vectors for D2/D3. Interupts are triggered on rising edges.
  EICRA  = _BV(ISC10) | _BV(ISC11) | _BV(ISC00) | _BV(ISC01); // 11: rising edes
  EIMSK  = _BV(INT0)  | _BV(INT1);  // enable both interrupts

  // Set up timer. Should fire every 100 us.
  // Set prescaler to 8 (increment every 8/F_CPU s (16 MHZ => 0.5 us)
  //TCCR0B = _BV(CS01);
  // Prescaler set by timer start

  // Set compare to 208 (200*0.5 us = 104 us)
  OCR0A  = 208;

  // And timer to compare mode
  TCCR0A = _BV(WGM01);

  // For debugging, output the compare match to check timing
  DDRD   |= _BV(DDD6);
  //TCCR0A |= _BV(COM0A0);

  // initialize clock generation for the charge pump
  start_charge_pump();


  sei(); // Go!

  // FIXME: UART interrupts + sleep instead.
  while(1) {
    char c = ringbuffer_read();
    if(c != 0) {
      printf("%c", c);
    }
  }
}

#define STATE_BEGIN 0
#define STATE_L 1
#define STATE_H 2
#define STATE_PACKET_BEGINS_WITH_L 1
#define STATE_PACKET_BEGINS_WITH_H 2

volatile uint8_t symbol_state = STATE_BEGIN;
volatile uint8_t packet_state = STATE_BEGIN;
volatile uint8_t time = 0; // in 100 us

// Pin D9 is OC1A (=B1) on Arduino board
static inline void start_charge_pump(void) {
  DDRB |= _BV(DDB1); // Port OC1A (=B1) data direction config
  TCCR1A = _BV(WGM10) | _BV(COM1A1); // PWM, phase correct, 8 bit.
  TCCR1B =  _BV(CS10); // Prescaler 0
  OCR1A = 128-1; // Duty cycle 50% (Anm. ob 128 oder 127 bitte prüfen)
  // => 31250 HZ
}

// Atomic, because called from ISR only.
static inline void start_timer(void) {
  // Reset
  time = 0;

  // Start timer from the middle, so we sure trigger the right stuff.
  TCNT0  = 104;

  // Enable timer interrupts.
  TIMSK0 = _BV(OCIE0A);

  // Enable prescaler
  TCCR0B = _BV(CS01);
}

// Atomic, because called from ISR only.
static inline void stop_timer(void) {
  // Stop timer.
  TCCR0B = 0;

  // Disable timer interrupts.
  TIMSK0 = 0;
}

// Symbols may start with an L and end with an H or vice versa. These interrupt
// routines handle both cases.

// L received
ISR(INT0_vect, ISR_BLOCK) {
  if(packet_state == STATE_BEGIN) {
    packet_state = STATE_PACKET_BEGINS_WITH_L;
  }

  if(symbol_state == STATE_BEGIN && packet_state == STATE_PACKET_BEGINS_WITH_L) {
    start_timer();
    symbol_state = STATE_L;
    return;
  }

  if(symbol_state == STATE_H && packet_state == STATE_PACKET_BEGINS_WITH_H) {
    ringbuffer_write('0'+time); // FIXME: Overflows if timing incorrect
    symbol_state = STATE_BEGIN;
    return;
  }

  ringbuffer_write('E');
  stop_timer();
  symbol_state = STATE_BEGIN;
}

// H received
ISR(INT1_vect, ISR_BLOCK) {
  if(packet_state == STATE_BEGIN) {
    packet_state = STATE_PACKET_BEGINS_WITH_H;
  }

  if(symbol_state == STATE_BEGIN && packet_state == STATE_PACKET_BEGINS_WITH_H) {
    start_timer();
    symbol_state = STATE_H;
    return;
  }

  if(symbol_state == STATE_L && packet_state == STATE_PACKET_BEGINS_WITH_L) {
    ringbuffer_write('0'+time); // FIXME: Overflows if timing incorrect
    symbol_state = STATE_BEGIN;
    return;
  }

  ringbuffer_write('E');
  stop_timer();
  symbol_state = STATE_BEGIN;
}

ISR (TIMER0_COMPA_vect, ISR_BLOCK)
{
  if(symbol_state != STATE_BEGIN) {
    PORTD ^= _BV(PD6); // Debugging.
  }

  time++;

  // More than 1.248 ms since last signal. Assume packet end.
  if(time > 24 && symbol_state == STATE_BEGIN) {
    stop_timer();
    if(packet_state == STATE_PACKET_BEGINS_WITH_L) {
      ringbuffer_write('L');
    }
    if(packet_state == STATE_PACKET_BEGINS_WITH_H) {
      ringbuffer_write('H');
    }
    packet_state = STATE_BEGIN;

    ringbuffer_write('\n');
  }

  if(symbol_state != STATE_BEGIN) {
    PORTD ^= _BV(PD6); // Debugging.
  }
}
