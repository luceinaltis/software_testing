CC=gcc
CFLAGS=

hellomake: grep.c
	gcc -o grep20 grep.c

gcov: grep.c
	gcc -O0 -fprofile-arcs -ftest-coverage -o grep20 -w grep.c

.PHONY: clean

clean:
	rm -f ./*.o
	rm -f ./*.gcno
	rm -f ./*.gcda
	rm -f ./*.gcov
	rm -f grep20
