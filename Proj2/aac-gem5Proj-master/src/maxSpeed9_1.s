	.file	"maxSpeed9_1.c"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	.LC0(%rip), %eax
	movl	%eax, -8(%rbp)
	movl	.LC0(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	.LC0(%rip), %eax
	movl	%eax, -16(%rbp)
	movl	.LC0(%rip), %eax
	movl	%eax, -20(%rbp)
	movl	.LC0(%rip), %eax
	movl	%eax, -24(%rbp)
	movl	.LC0(%rip), %eax
	movl	%eax, -28(%rbp)
	movl	.LC0(%rip), %eax
	movl	%eax, -32(%rbp)
	movl	.LC0(%rip), %eax
	movl	%eax, -36(%rbp)
	movl	.LC0(%rip), %eax
	movl	%eax, -40(%rbp)
	movl	.LC0(%rip), %eax
	movl	%eax, -44(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movl	$0, -56(%rbp)
	movl	.LC1(%rip), %eax
	movl	%eax, -80(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movss	-8(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	movss	-12(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	movss	-16(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -72(%rbp)
	movss	-20(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -72(%rbp)
	movss	-24(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
	movss	-28(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
	movss	-32(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-36(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -64(%rbp)
	movss	-40(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-12(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -60(%rbp)
	movss	-8(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
	movss	-12(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movss	-72(%rbp), %xmm1
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movss	-76(%rbp), %xmm1
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -56(%rbp)
	addl	$1, -4(%rbp)
.L2:
	cmpl	$99999, -4(%rbp)
	jle	.L3
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1078529622
	.align 4
.LC1:
	.long	1088841318
	.align 8
.LC2:
	.long	0
	.long	1074266112
	.align 8
.LC3:
	.long	0
	.long	1073741824
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
