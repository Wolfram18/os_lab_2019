CC=gcc
CFLAGS=-I.

#цель: зависимости
#[tab] команда
all : parallel_min_max

parallel_min_max : utils.o find_min_max.o utils.h find_min_max.h
	$(CC) -o parallel_min_max utils.o find_min_max.o parallel_min_max.c $(CFLAGS)
	#./parallel_min_max --seed 10 --array_size 10 --pnum 4 --by_files 0

utils.o : utils.h
	$(CC) -o utils.o -c utils.c $(CFLAGS)

find_min_max.o : utils.h find_min_max.h
	$(CC) -o find_min_max.o -c find_min_max.c $(CFLAGS)

clean :
	rm utils.o find_min_max.o sequential_min_max parallel_min_max task5.o task5.out