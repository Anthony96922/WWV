CC = gcc
CFLAGS = -O2 -Wall -Wextra -pedantic -lsndfile -s

all: helpers

helpers: ann id nums phone hamsci

audio-src:
	./create-audio-data.sh

ann: ann.c
	$(CC) -o ann $< $(CFLAGS)

id: id.c
	$(CC) -o id $< $(CFLAGS)

nums: nums.c
	$(CC) -o nums $< $(CFLAGS)

phone: phone.c
	$(CC) -o phone $< $(CFLAGS)

hamsci: hamsci.c
	$(CC) -o hamsci $< $(CFLAGS)

clean:
	rm -f ann id nums phone hamsci
