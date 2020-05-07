CC=gcc
CFLAGS=-I.

all : mult.c server.c
	gcc -c mult.c -o mult.o
	gcc -shared mult.o -o libmult.so
	gcc server.c -L. -lmult -lpthread -o server
	gcc client.c -L. -lmult -lpthread -o client
	#LD_LIBRARY_PATH=$(pwd)
	#./server --port 20001 --tnum 3
	#./server --port 20002 --tnum 4
	#./client --k 10 --mod 44 --servers ./servers.txt

clean :
	rm mult.o libmult.so server client