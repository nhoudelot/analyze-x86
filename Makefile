CC=gcc-4.8
CFLAGS=-O2 -march=native -mtune=native

all:
	$(CC) $(CFLAGS) -Iinclude -o analyze-x86 analyze-x86.c

clean:
	rm analyze-x86
