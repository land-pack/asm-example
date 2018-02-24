.section .rodata
	msg: .ascii "Hello,ak!\n"
	len = .-msg

.section .text
	.globl _start
	_start:
		movl $2, %eax
		int  $0x80

	# This system call as following
	# just test whether fork a second process
	# to output double string .
	
	movl $4, %eax	# To see if the fork call
	movl $1, %ebx	# sys call
	movl $msg, %ecx	# load data to register
	movl $len, %edx	# Load the length of data
	int  $0x80


	# The following code use for exit process
	movl $1, %eax
	movl $0, %ebx
	int $0x80
