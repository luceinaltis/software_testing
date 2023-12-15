CC=gcc
CFLAGS=

klee: grep.c
	clang -I ../../include -emit-llvm -c -g -O0 -Xclang -disable-O0-optnone grep.c

gcov: grep.c
	gcc -O0 -fprofile-arcs -ftest-coverage -o grep20 -w grep.c

.PHONY: klee clean

clean:
	rm -f ./*.o
	rm -f ./*.gcno
	rm -f ./*.gcda
	rm -f ./*.gcov
	rm -f ./*.bc
	rm -f grep20
