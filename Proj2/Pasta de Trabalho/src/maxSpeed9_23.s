	.file	"maxSpeed9_2.c"
	.text
.Ltext0:
	.globl	main
	.type	main, @function
main:
.LFB0:
	.file 1 "maxSpeed9_2.c"
	.loc 1 5 0
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 8 0
	movl	.LC0(%rip), %eax
	movl	%eax, -8(%rbp)
	.loc 1 9 0
	movl	.LC0(%rip), %eax
	movl	%eax, -12(%rbp)
	.loc 1 10 0
	movl	.LC0(%rip), %eax
	movl	%eax, -16(%rbp)
	.loc 1 11 0
	movl	.LC0(%rip), %eax
	movl	%eax, -20(%rbp)
	.loc 1 12 0
	movl	.LC0(%rip), %eax
	movl	%eax, -24(%rbp)
	.loc 1 13 0
	movl	.LC0(%rip), %eax
	movl	%eax, -28(%rbp)
	.loc 1 14 0
	movl	.LC0(%rip), %eax
	movl	%eax, -32(%rbp)
	.loc 1 15 0
	movl	.LC0(%rip), %eax
	movl	%eax, -36(%rbp)
	.loc 1 16 0
	movl	.LC0(%rip), %eax
	movl	%eax, -40(%rbp)
	.loc 1 17 0
	movl	.LC0(%rip), %eax
	movl	%eax, -44(%rbp)
	.loc 1 21 0
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -72(%rbp)
	movl	.LC1(%rip), %eax
	movl	%eax, -96(%rbp)
	.loc 1 27 0
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	.loc 1 29 0 discriminator 2
	movl	$25, -48(%rbp)
	.loc 1 30 0 discriminator 2
	movss	-8(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -92(%rbp)
	.loc 1 31 0 discriminator 2
	movss	-12(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -92(%rbp)
	.loc 1 32 0 discriminator 2
	movl	-48(%rbp), %eax
	xorl	$3, %eax
	movl	%eax, -52(%rbp)
	.loc 1 33 0 discriminator 2
	movl	-52(%rbp), %eax
	subl	$2, %eax
	movl	%eax, -56(%rbp)
	.loc 1 34 0 discriminator 2
	movss	-16(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -88(%rbp)
	.loc 1 35 0 discriminator 2
	movss	-20(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -88(%rbp)
	.loc 1 36 0 discriminator 2
	movl	-52(%rbp), %eax
	imull	$23, %eax, %eax
	movl	%eax, -56(%rbp)
	.loc 1 37 0 discriminator 2
	movss	-24(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -84(%rbp)
	.loc 1 38 0 discriminator 2
	movss	-28(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -84(%rbp)
	.loc 1 39 0 discriminator 2
	movl	-56(%rbp), %eax
	cltd
	idivl	-48(%rbp)
	movl	%eax, -60(%rbp)
	.loc 1 40 0 discriminator 2
	movss	-32(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)
	.loc 1 41 0 discriminator 2
	movss	-36(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -80(%rbp)
	.loc 1 42 0 discriminator 2
	movl	-48(%rbp), %eax
	movl	-60(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -64(%rbp)
	.loc 1 43 0 discriminator 2
	movss	-40(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	.loc 1 44 0 discriminator 2
	movss	-12(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -76(%rbp)
	.loc 1 45 0 discriminator 2
	movl	$3212, %eax
	cltd
	idivl	-64(%rbp)
	movl	%edx, -68(%rbp)
	.loc 1 46 0 discriminator 2
	movss	-8(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -72(%rbp)
	.loc 1 47 0 discriminator 2
	movss	-12(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movsd	.LC2(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movss	-88(%rbp), %xmm1
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movsd	.LC3(%rip), %xmm1
	addsd	%xmm1, %xmm0
	movss	-92(%rbp), %xmm1
	unpcklps	%xmm1, %xmm1
	cvtps2pd	%xmm1, %xmm1
	subsd	%xmm1, %xmm0
	unpcklpd	%xmm0, %xmm0
	cvtpd2ps	%xmm0, %xmm0
	movss	%xmm0, -72(%rbp)
	.loc 1 27 0 discriminator 2
	addl	$1, -4(%rbp)
.L2:
	.loc 1 27 0 is_stmt 0 discriminator 1
	cmpl	$99999, -4(%rbp)
	jle	.L3
	.loc 1 53 0 is_stmt 1
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
	.text
.Letext0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x157
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF2
	.byte	0x1
	.long	.LASF3
	.long	.LASF4
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF5
	.byte	0x1
	.byte	0x4
	.long	0x135
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x135
	.uleb128 0x3
	.string	"i"
	.byte	0x1
	.byte	0x6
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.string	"a"
	.byte	0x1
	.byte	0x8
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3
	.string	"b"
	.byte	0x1
	.byte	0x9
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3
	.string	"c"
	.byte	0x1
	.byte	0xa
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x3
	.string	"d"
	.byte	0x1
	.byte	0xb
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3
	.string	"e"
	.byte	0x1
	.byte	0xc
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3
	.string	"f"
	.byte	0x1
	.byte	0xd
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3
	.string	"g"
	.byte	0x1
	.byte	0xe
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x3
	.string	"h"
	.byte	0x1
	.byte	0xf
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3
	.string	"j"
	.byte	0x1
	.byte	0x10
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3
	.string	"k"
	.byte	0x1
	.byte	0x11
	.long	0x13c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x3
	.string	"i1"
	.byte	0x1
	.byte	0x13
	.long	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x3
	.string	"i2"
	.byte	0x1
	.byte	0x13
	.long	0x135
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x3
	.string	"i3"
	.byte	0x1
	.byte	0x13
	.long	0x135
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x3
	.string	"i4"
	.byte	0x1
	.byte	0x13
	.long	0x135
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3
	.string	"i5"
	.byte	0x1
	.byte	0x13
	.long	0x135
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3
	.string	"i6"
	.byte	0x1
	.byte	0x13
	.long	0x135
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x3
	.string	"vec"
	.byte	0x1
	.byte	0x15
	.long	0x143
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.long	.LASF0
	.uleb128 0x6
	.long	0x13c
	.long	0x153
	.uleb128 0x7
	.long	0x153
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.long	.LASF1
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF2:
	.string	"GNU C 4.8.5 20150623 (Red Hat 4.8.5-11) -mtune=generic -march=x86-64 -g"
.LASF0:
	.string	"float"
.LASF5:
	.string	"main"
.LASF4:
	.string	"/homelocal/aac/doge06/src"
.LASF3:
	.string	"maxSpeed9_2.c"
.LASF1:
	.string	"sizetype"
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-11)"
	.section	.note.GNU-stack,"",@progbits
