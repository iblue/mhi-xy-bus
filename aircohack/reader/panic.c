#include <avr/interrupt.h>
#include <stdio.h>
#include "panic.h"

// If shit hits then fan, at least tell the user how it smells.
void panic(const char* message) {
  cli();
  printf("Panic: ");
  puts(message);
  puts("Halted");
  while(1);
}
