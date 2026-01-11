#include <util/atomic.h>
#include <stdint.h>
#include <stdio.h>

#include "ringbuffer.h"
#include "panic.h"

//#define DEBUG

volatile ringbuffer_t global_ringbuffer;

void ringbuffer_write(char c) {
   ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
#ifdef DEBUG
     printf("DEBUG: Starting to write: %c\n", c);
     printf("DEBUG: State. readidx: %d writeidx: %d elems: %d\n", global_ringbuffer.readidx, global_ringbuffer.writeidx, global_ringbuffer.elems);
#endif

     if(global_ringbuffer.elems >= RINGBUFFER_SIZE) {
       // Shit happens.
       panic("Ringbuffer overflow");
     }

     global_ringbuffer.buffer[global_ringbuffer.writeidx++] = c;
     if(global_ringbuffer.writeidx > RINGBUFFER_SIZE) {
       global_ringbuffer.writeidx = 0;
     }

     global_ringbuffer.elems++;

#ifdef DEBUG
     printf("DEBUG: Finished writing: %c\n", c);
     printf("DEBUG: State. readidx: %d writeidx: %d elems: %d\n", global_ringbuffer.readidx, global_ringbuffer.writeidx, global_ringbuffer.elems);
#endif
   }
}

char ringbuffer_read() {
  char ret;

  ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
#ifdef DEBUG
    printf("DEBUG: Starting to read.\n");
    printf("DEBUG: State. readidx: %d writeidx: %d elems: %d\n", global_ringbuffer.readidx, global_ringbuffer.writeidx, global_ringbuffer.elems);
#endif

    if(global_ringbuffer.elems == 0) {
      return 0;
    }

    ret = global_ringbuffer.buffer[global_ringbuffer.readidx++];
    if(global_ringbuffer.readidx > RINGBUFFER_SIZE) {
      global_ringbuffer.readidx = 0;
    }

    global_ringbuffer.elems--;

#ifdef DEBUG
    printf("DEBUG: Finished reading: %c\n", ret);
    printf("DEBUG: State. readidx: %d writeidx: %d elems: %d\n", global_ringbuffer.readidx, global_ringbuffer.writeidx, global_ringbuffer.elems);
#endif
  }

  return ret;
}

