# single_chan_pkt_fwd
# Single Channel LoRaWAN Gateway

CC=g++
LD=ld
CFLAGS=-Wall
LIBS=-lwiringPi

all: single_chan_pkt_fwd

single_chan_pkt_fwd: base64.o main.o
	@echo "  LD  $@"
	@$(LD) main.o base64.o $(LIBS) -o single_chan_pkt_fwd

main.o: main.cpp
	@echo "  CPP $^"
	@$(CC) $(CFLAGS) -c main.cpp

base64.o: base64.c
	@echo "  CC  $^"
	@$(CC) $(CFLAGS) -c base64.c

clean:
	rm -f *.o single_chan_pkt_fwd
