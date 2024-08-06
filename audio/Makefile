CC = gcc
AUDIO = hamsci.o id.o time_ann.o time_nums.o wwvh_phone.o

all: audio.a

audio.a: $(AUDIO)
	ar rc audio.a *.o

clean:
	rm -f audio.a *.o
