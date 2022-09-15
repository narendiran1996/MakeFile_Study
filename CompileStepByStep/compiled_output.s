	.file	"program.c"
	.text
	.globl	CONST
	.data
	.align 4
	.type	CONST, @object
	.size	CONST, 4
CONST:
	.long	3600
	.globl	PI
	.align 4
	.type	PI, @object
	.size	PI, 4
PI:
	.long	1078523331
	.section	.rodata
.LC1:
	.string	"Narendiran"
.LC2:
	.string	"Hi %s\n\r"
.LC3:
	.string	"Simple Caluclation...\n\r"
.LC5:
	.string	"output value is %.3f\n\r"
.LC6:
	.string	"Bye %s\n\r"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	CONST(%rip), %eax
	cvtsi2ssl	%eax, %xmm1
	movss	PI(%rip), %xmm0
	mulss	%xmm0, %xmm1
	movss	.LC4(%rip), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	cvtss2sd	-4(%rbp), %xmm0
	leaq	.LC5(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	leaq	.LC1(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC4:
	.long	1150992384
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
