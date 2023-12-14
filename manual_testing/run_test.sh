#!/bin/bash
GREP_ENV=../

# Run test cases from 1 to 10.

: <<"END"
# Test Case 1
cd $GREP_ENV
make clean --silent
make gcov --silent

echo "[Test 1 results]"
./grep20 -A 1 -B 10 -Eviwxb -bcn -c -n 'aa$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_1.txt > /dev/null
./grep20 -A 1 -B 10 -Fviwxb -bcn -c -n 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_1.txt > /dev/null
./grep20 -A 1 -B 10 -eviwxb 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_1.txt > /dev/null
./grep20 -g 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_1.txt > /dev/null
./grep20 -G 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_1.txt > /dev/null
./grep20 -F -s -q 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_1.txt > /dev/null

gcov -ab grep.gcno  
cd - > /dev/null


# Test Case 2
cd $GREP_ENV
make clean --silent
make gcov --silent

echo "[Test 2 results]"
./grep20 -A 1 -B 10 -Eviwxb -bcn -c -n 'aa$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_2.txt > /dev/null
./grep20 -A 1 -B 10 -Fviwxb -bcn -c -n 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_2.txt > /dev/null
./grep20 -A 1 -B 10 -eviwxb 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_2.txt > /dev/null
./grep20 -g 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_2.txt > /dev/null
./grep20 -G 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_2.txt > /dev/null
./grep20 -F -s -q 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_2.txt > /dev/null

gcov -ab grep.gcno  
cd - > /dev/null


# Test Case 3
cd $GREP_ENV
make clean --silent
make gcov --silent

echo "[Test 3 results]"
./grep20 -A 1 -B 10 -Eviwxb -bcn -c -n 'got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_3.txt > /dev/null
./grep20 -A 1 -B 10 -Fviwxb -bcn -c -n 'got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_3.txt > /dev/null
./grep20 -A 1 -B 10 -eviwxb 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_3.txt > /dev/null

gcov -ab grep.gcno  
cd - > /dev/null


# Test Case 4
cd $GREP_ENV
make clean --silent
make gcov --silent

echo "[Test 4 results]"
./grep20 -Eviwxb -bcn -c -n 'got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_4.txt > /dev/null
./grep20 -Fviwxb -bcn -c -n 'got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_4.txt > /dev/null
./grep20 -A 1 -B 10 -eviwxb 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_4.txt > /dev/null

gcov -ab grep.gcno  
cd - > /dev/null


# Test Case 5
cd $GREP_ENV
make clean --silent
make gcov --silent

echo "[Test 5 results]"
./grep20 -Eviwxb -bcn -c -n '(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_5.txt > /dev/null
./grep20 -Fviwxb -bcn -c -n 'got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_5.txt > /dev/null
./grep20 -A 1 -B 10 -eviwxb 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_5.txt > /dev/null

gcov -ab grep.gcno  
cd - > /dev/null


# Test Case 6
cd $GREP_ENV
make clean --silent
make gcov --silent

echo "[Test 6 results]"
./grep20 -Eviwxb -bcn -c -n 'a011*b|(a|b)+b+a|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_6.txt > /dev/null
./grep20 -Fviwxb -bcn -c -n 'got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_6.txt > /dev/null
./grep20 -A 1 -B 10 -eviwxb 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_6.txt > /dev/null

gcov -ab grep.gcno  
cd - > /dev/null


# Test Case 7
cd $GREP_ENV
make clean --silent
make gcov --silent

echo "[Test 7 results]"
./grep20 -A 10 -B 1 -Eviwxb -bcn -c -n 'aa$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_7.txt > /dev/null
./grep20 -A 10 -B 1 -Fviwxb -bcn -c -n 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_7.txt > /dev/null
./grep20 -A 10 -B 1 -eviwxb 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_7.txt > /dev/null
./grep20 -g 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_7.txt > /dev/null
./grep20 -G 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_7.txt > /dev/null
./grep20 -F -s -q 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_7.txt > /dev/null

gcov -ab grep.gcno  
cd - > /dev/null


# Test Case 8
cd $GREP_ENV
make clean --silent
make gcov --silent

echo "[Test 8 results]"
./grep20 -A 10 -B 1 -Eviwxb -bcn -c -n 'aa$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_8.txt > /dev/null
./grep20 -A 10 -B 1 -Fviwxb -bcn -c -n 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_8.txt > /dev/null
./grep20 -A 10 -B 1 -eviwxb 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_8.txt > /dev/null
./grep20 -A 1 -B 1 -g 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_8.txt > /dev/null
./grep20 -A 5 -B 5 -G 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_8.txt > /dev/null
./grep20 -A 5 -F -s -q 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_8.txt > /dev/null

gcov -ab grep.gcno  
cd - > /dev/null


# Test Case 9
cd $GREP_ENV
make clean --silent
make gcov --silent

echo "[Test 9 results]"
./grep20 -A 1 -B 1 -Evixb -bcn -c -n 'aa$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_9.txt > /dev/null
./grep20 -A 1 -B 1 -Fvwxb -bcn -c -n 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_9.txt > /dev/null
./grep20 -A 1 -B 1 -eviwxb 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_9.txt > /dev/null
./grep20 -A 1 -B 1 -g 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_9.txt > /dev/null
./grep20 -A 5 -B 5 -G 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_9.txt > /dev/null
./grep20 -A 5 -F -s -q 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_9.txt > /dev/null

gcov -ab grep.gcno  
cd - > /dev/null
END


# Test Case 10
cd $GREP_ENV
make clean --silent
make gcov --silent

echo "[Test 10 results]"
./grep20 -A 10 -B 10 -Evixb -bcn -c -n 'aa$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_10.txt > /dev/null
./grep20 -A 10 -B 10 -Fvwxb -bcn -c -n 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_10.txt > /dev/null
./grep20 -A 10 -B 10 -eviwxb 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_10.txt > /dev/null
./grep20 -A 10 -B 10 -g 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_10.txt > /dev/null
./grep20 -A 10 -B 10 -G 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_10.txt > /dev/null
./grep20 -A 10 -B 10 -F -s -q 'os$|0+1+2|got.*to|a?b|a+b|[a-zA-Z0-9_]|[0-9]|(0|(1(01*0)*1))*|a{1,3}b|a[hnc]?ab|a(a|b)c' manual_testing/test/test_10.txt > /dev/null

gcov -ab grep.gcno  
cd - > /dev/null

