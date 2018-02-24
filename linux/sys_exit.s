.section .data
.section .text
.globl _start

_start:
	movl $1, %eax	# sys call
	movl $0, %ebx	# return 0
	int  $0x80

