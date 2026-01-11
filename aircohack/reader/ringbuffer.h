#include <stdint.h>

#define RINGBUFFER_SIZE 128

typedef struct {
  uint8_t readidx;
  uint8_t writeidx;
  uint8_t elems;
  char buffer[RINGBUFFER_SIZE];
} ringbuffer_t;

void ringbuffer_write(char c);
char ringbuffer_read(void);
