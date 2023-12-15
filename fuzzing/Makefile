CC=gcc
CFLAGS=

export AFL_USE_UBSAN=1
export AFL_USE_ASAN=1
export AFL_OPTIONS="detect_leaks=1:abort_on_error=1:allow_user_segv_handler=0:handle_abort=1:symbolize=0"

all: grep.c
	cmake -DCMAKE_C_COMPILER=afl-clang-fast -DCMAKE_CXX_COMPILER=afl-clang-fast++ -DCMAKE_CXX_FLAGS="-fsanitize=address,leak,undefined -g" -DCMAKE_C_FLAGS="-fsanitize=address,leak,undefined -g" ..

gcov: grep.c
	gcc -O0 -fprofile-arcs -ftest-coverage -o grep20 -w grep.c

.PHONY: all clean

clean:
	rm -f ./*.o
	rm -f ./*.gcno
	rm -f ./*.gcda
	rm -f ./*.gcov
	rm -f grep20
