	.file	"main.cpp"
	.text
	.p2align 4,,15
	.globl	_Z3fooi
	.type	_Z3fooi, @function
_Z3fooi:
.LFB265:
	.cfi_startproc
	addl	%edi, sum(%rip)
	ret
	.cfi_endproc
.LFE265:
	.size	_Z3fooi, .-_Z3fooi
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
.LC2:
	.string	"sum=%d\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB266:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	xorl	%ebx, %ebx
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	leaq	28(%rsp), %rsi
	call	scanf@PLT
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	cvtsi2sd	28(%rsp), %xmm0
	jmp	.L8
	.p2align 4,,10
	.p2align 3
.L5:
	addl	%ebx, %esi
	addl	$1, %ebx
	movl	%esi, sum(%rip)
.L8:
	ucomisd	%xmm0, %xmm3
	sqrtsd	%xmm0, %xmm2
	pxor	%xmm1, %xmm1
	cvtsi2sd	%ebx, %xmm1
	ja	.L11
	comisd	%xmm1, %xmm2
	movl	sum(%rip), %esi
	ja	.L5
.L6:
	leaq	.LC2(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
.L11:
	.cfi_restore_state
	movsd	%xmm2, 8(%rsp)
	movsd	%xmm1, (%rsp)
	call	sqrt@PLT
	movsd	(%rsp), %xmm1
	movsd	8(%rsp), %xmm2
	movl	sum(%rip), %esi
	comisd	%xmm1, %xmm2
	jbe	.L6
	pxor	%xmm0, %xmm0
	pxor	%xmm3, %xmm3
	cvtsi2sd	28(%rsp), %xmm0
	jmp	.L5
	.cfi_endproc
.LFE266:
	.size	main, .-main
	.globl	sum
	.bss
	.align 4
	.type	sum, @object
	.size	sum, 4
sum:
	.zero	4
	.ident	"GCC: (Debian 8.2.0-6) 8.2.0"
	.section	.note.GNU-stack,"",@progbits
