# How to compile your assembly code

There are two style code.

	# gcc for main
	gcc -o a.out  a.S

	# as & ld for _start
	as  test.S -o test.o;  
	ld test.o -o a.ou
