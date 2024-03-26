CC = gcc
CFLAGS = -O2 -Wall -Wextra -pedantic -std=c11

SAMPLE_RATE = 16000
SAMPLES_IN_1_MS = 16

CFLAGS += -DSAMPLE_RATE=$(SAMPLE_RATE) -DSAMPLES_IN_1_MS=$(SAMPLES_IN_1_MS)

all: wwvsim

wwvsim: wwvsim.o voice.o geophys.o audio/*.c
	$(MAKE) -C audio
	$(CC) -o $@ wwvsim.o voice.o geophys.o audio/audio.a -lm -s -pthread

clean:
	$(MAKE) -C audio clean
	rm -f *.o
