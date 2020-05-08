CC=gcc
CFLAGS=-I.

all : mult.c server.c
	gcc -c mult.c -o mult.o
	gcc -shared mult.o -o libmult.so
	gcc server.c -L. -lmult -lpthread -o server
	gcc client.c -L. -lmult -lpthread -o client
	#LD_LIBRARY_PATH=$(pwd)
	#./server --port 20001 --tnum 2 &
	#./server --port 20002 --tnum 5 &
	#./client --k 20 --mod 47 --servers ./servers.txt
	#kill $(pgrep server)

clean :
	rm mult.o libmult.so server client