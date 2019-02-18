	.file	"benchmark.cpp"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1238:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1238:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.align 2
	.p2align 4,,15
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.28, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.28:
.LFB3547:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	leaq	16(%rdi), %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	movq	%r12, (%rdi)
	movq	%rsi, %rdi
	call	strlen
	movq	%rax, %rbp
	movq	%rax, 8(%rsp)
	cmpq	$15, %rax
	ja	.L12
	cmpq	$1, %rax
	jne	.L6
	movzbl	0(%r13), %eax
	movb	%al, 16(%rbx)
.L7:
	movq	8(%rsp), %rax
	movq	(%rbx), %rdx
	movq	%rax, 8(%rbx)
	movb	$0, (%rdx,%rax)
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L6:
	.cfi_restore_state
	testq	%rax, %rax
	je	.L7
	jmp	.L5
.L12:
	xorl	%edx, %edx
	leaq	8(%rsp), %rsi
	movq	%rbx, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm
	movq	%rax, %r12
	movq	%rax, (%rbx)
	movq	8(%rsp), %rax
	movq	%rax, 16(%rbx)
.L5:
	movq	%rbp, %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
	call	memcpy
	jmp	.L7
	.cfi_endproc
.LFE3547:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.28, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.28
	.section	.rodata._Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_.str1.1,"aMS",@progbits,1
.LC5:
	.string	"Sum:"
.LC6:
	.string	"Time:"
.LC7:
	.string	"s"
	.section	.text._Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.p2align 4,,15
	.weak	_Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.type	_Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, @function
_Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_:
.LFB3163:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	$1000000, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	$0x000000000, (%rsp)
	movq	%rax, %r13
	jmp	.L20
	.p2align 4,,10
	.p2align 3
.L18:
	movsd	(%r14), %xmm2
	movsd	8(%r14), %xmm1
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	addsd	(%rsp), %xmm0
	movsd	%xmm0, (%rsp)
	subl	$1, %ebx
	je	.L44
.L20:
	movq	%rbp, %rdi
	call	_ZNSt13random_device9_M_getvalEv
	pxor	%xmm0, %xmm0
	pxor	%xmm4, %xmm4
	movq	%rbp, %rdi
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm4, %xmm0
	movsd	%xmm0, 8(%rsp)
	call	_ZNSt13random_device9_M_getvalEv
	pxor	%xmm0, %xmm0
	movl	%eax, %eax
	cvtsi2sdq	%rax, %xmm0
	mulsd	.LC1(%rip), %xmm0
	addsd	8(%rsp), %xmm0
	mulsd	.LC2(%rip), %xmm0
	comisd	.LC3(%rip), %xmm0
	jb	.L18
	movsd	.LC3(%rip), %xmm0
	pxor	%xmm1, %xmm1
	call	nextafter
	jmp	.L18
.L44:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	8(%r12), %rdx
	movq	(%r12), %rsi
	pxor	%xmm0, %xmm0
	subq	%r13, %rax
	movl	$_ZSt4cout, %edi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC4(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L24
	cmpb	$0, 56(%rbx)
	je	.L22
	movsbl	67(%rbx), %esi
.L23:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$4, %edx
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L24
	cmpb	$0, 56(%rbx)
	je	.L25
	movsbl	67(%rbx), %esi
.L26:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$5, %edx
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC7, %esi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L24
	cmpb	$0, 56(%rbp)
	je	.L27
	movsbl	67(%rbp), %esi
.L28:
	movq	%rbx, %rdi
	call	_ZNSo3putEc
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv
.L22:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L23
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L23
.L27:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L28
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L28
.L25:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L26
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L26
.L24:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE3163:
	.size	_Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .-_Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.section	.text._Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.p2align 4,,15
	.weak	_Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.type	_Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, @function
_Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_:
.LFB3167:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movabsq	$8589934597, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$1000000, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm4, %xmm4
	pxor	%xmm2, %xmm2
	movsd	.LC8(%rip), %xmm6
	movq	%rax, %rbp
	movsd	.LC9(%rip), %xmm5
	movsd	.LC3(%rip), %xmm3
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L78:
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
.L47:
	imulq	$16807, %rdx, %rcx
	movapd	%xmm0, %xmm1
	addsd	%xmm4, %xmm1
	movq	%rcx, %rax
	mulq	%r13
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rax, %rdx
	shrq	$30, %rdx
	movq	%rdx, %rax
	salq	$31, %rax
	subq	%rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rcx, (%r15)
	subq	$1, %rdx
	js	.L48
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
.L49:
	mulsd	%xmm6, %xmm0
	addsd	%xmm1, %xmm0
	divsd	%xmm5, %xmm0
	comisd	%xmm3, %xmm0
	jnb	.L76
.L50:
	movsd	(%r14), %xmm7
	movsd	8(%r14), %xmm1
	subsd	%xmm7, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	%xmm7, %xmm0
	addsd	%xmm0, %xmm2
	subl	$1, %r12d
	je	.L77
.L52:
	imulq	$16807, (%r15), %rcx
	movq	%rcx, %rax
	mulq	%r13
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rax, %rdx
	shrq	$30, %rdx
	movq	%rdx, %rax
	salq	$31, %rax
	subq	%rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rcx, %rdx
	subq	$1, %rax
	jns	.L78
	movq	%rax, %rcx
	andl	$1, %eax
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%rax, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L47
	.p2align 4,,10
	.p2align 3
.L48:
	movq	%rdx, %rax
	andl	$1, %edx
	pxor	%xmm0, %xmm0
	shrq	%rax
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L76:
	movapd	%xmm3, %xmm0
	pxor	%xmm1, %xmm1
	movsd	%xmm2, (%rsp)
	call	nextafter
	pxor	%xmm4, %xmm4
	movsd	(%rsp), %xmm2
	movsd	.LC9(%rip), %xmm5
	movsd	.LC8(%rip), %xmm6
	movsd	.LC3(%rip), %xmm3
	jmp	.L50
.L77:
	movsd	%xmm2, 8(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	pxor	%xmm0, %xmm0
	subq	%rbp, %rax
	movl	$_ZSt4cout, %edi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm2
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L56
	cmpb	$0, 56(%rbx)
	je	.L54
	movsbl	67(%rbx), %esi
.L55:
	movq	%rbp, %rdi
	movsd	%xmm2, 8(%rsp)
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$4, %edx
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm2
	movl	$_ZSt4cout, %edi
	movapd	%xmm2, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L56
	cmpb	$0, 56(%rbx)
	je	.L57
	movsbl	67(%rbx), %esi
.L58:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$5, %edx
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC7, %esi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L56
	cmpb	$0, 56(%rbp)
	je	.L59
	movsbl	67(%rbp), %esi
.L60:
	movq	%rbx, %rdi
	call	_ZNSo3putEc
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv
.L54:
	.cfi_restore_state
	movq	%rbx, %rdi
	movsd	%xmm2, 8(%rsp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movsd	8(%rsp), %xmm2
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L55
	movq	%rbx, %rdi
	call	*%rax
	movsd	8(%rsp), %xmm2
	movsbl	%al, %esi
	jmp	.L55
.L59:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L60
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L60
.L57:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L58
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L58
.L56:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE3167:
	.size	_Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .-_Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.section	.text._Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.p2align 4,,15
	.weak	_Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.type	_Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, @function
_Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_:
.LFB3171:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rsi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movabsq	$8589934597, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$1000000, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm4, %xmm4
	pxor	%xmm2, %xmm2
	movsd	.LC8(%rip), %xmm6
	movq	%rax, %rbp
	movsd	.LC9(%rip), %xmm5
	movsd	.LC3(%rip), %xmm3
	jmp	.L86
	.p2align 4,,10
	.p2align 3
.L112:
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
.L81:
	imulq	$48271, %rdx, %rcx
	movapd	%xmm0, %xmm1
	addsd	%xmm4, %xmm1
	movq	%rcx, %rax
	mulq	%r13
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rax, %rdx
	shrq	$30, %rdx
	movq	%rdx, %rax
	salq	$31, %rax
	subq	%rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rcx, (%r15)
	subq	$1, %rdx
	js	.L82
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
.L83:
	mulsd	%xmm6, %xmm0
	addsd	%xmm1, %xmm0
	divsd	%xmm5, %xmm0
	comisd	%xmm3, %xmm0
	jnb	.L110
.L84:
	movsd	(%r14), %xmm7
	movsd	8(%r14), %xmm1
	subsd	%xmm7, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	%xmm7, %xmm0
	addsd	%xmm0, %xmm2
	subl	$1, %r12d
	je	.L111
.L86:
	imulq	$48271, (%r15), %rcx
	movq	%rcx, %rax
	mulq	%r13
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rax, %rdx
	shrq	$30, %rdx
	movq	%rdx, %rax
	salq	$31, %rax
	subq	%rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rcx, %rdx
	subq	$1, %rax
	jns	.L112
	movq	%rax, %rcx
	andl	$1, %eax
	pxor	%xmm0, %xmm0
	shrq	%rcx
	orq	%rax, %rcx
	cvtsi2sdq	%rcx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L81
	.p2align 4,,10
	.p2align 3
.L82:
	movq	%rdx, %rax
	andl	$1, %edx
	pxor	%xmm0, %xmm0
	shrq	%rax
	orq	%rdx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L110:
	movapd	%xmm3, %xmm0
	pxor	%xmm1, %xmm1
	movsd	%xmm2, (%rsp)
	call	nextafter
	pxor	%xmm4, %xmm4
	movsd	(%rsp), %xmm2
	movsd	.LC9(%rip), %xmm5
	movsd	.LC8(%rip), %xmm6
	movsd	.LC3(%rip), %xmm3
	jmp	.L84
.L111:
	movsd	%xmm2, 8(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	pxor	%xmm0, %xmm0
	subq	%rbp, %rax
	movl	$_ZSt4cout, %edi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm2
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L90
	cmpb	$0, 56(%rbx)
	je	.L88
	movsbl	67(%rbx), %esi
.L89:
	movq	%rbp, %rdi
	movsd	%xmm2, 8(%rsp)
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$4, %edx
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm2
	movl	$_ZSt4cout, %edi
	movapd	%xmm2, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L90
	cmpb	$0, 56(%rbx)
	je	.L91
	movsbl	67(%rbx), %esi
.L92:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$5, %edx
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC7, %esi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L90
	cmpb	$0, 56(%rbp)
	je	.L93
	movsbl	67(%rbp), %esi
.L94:
	movq	%rbx, %rdi
	call	_ZNSo3putEc
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv
.L88:
	.cfi_restore_state
	movq	%rbx, %rdi
	movsd	%xmm2, 8(%rsp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movsd	8(%rsp), %xmm2
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L89
	movq	%rbx, %rdi
	call	*%rax
	movsd	8(%rsp), %xmm2
	movsbl	%al, %esi
	jmp	.L89
.L93:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L94
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L94
.L91:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L92
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L92
.L90:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE3171:
	.size	_Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .-_Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.section	.text._Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.p2align 4,,15
	.weak	_Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.type	_Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, @function
_Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_:
.LFB3179:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movabsq	$-5403634167711393303, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	$1000000, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movabsq	$-2270628950310912, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movabsq	$8202884508482404352, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 16(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm4, %xmm4
	pxor	%xmm3, %xmm3
	movsd	.LC2(%rip), %xmm6
	movq	%rax, 8(%rsp)
	movsd	.LC3(%rip), %xmm5
	movabsq	$6148914691236517205, %rsi
	jmp	.L125
	.p2align 4,,10
	.p2align 3
.L163:
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm4, %xmm0
	mulsd	%xmm6, %xmm0
	comisd	%xmm5, %xmm0
	jnb	.L160
.L123:
	movsd	(%r15), %xmm2
	movsd	8(%r15), %xmm1
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm3
	subl	$1, %r13d
	je	.L161
.L125:
	movq	2496(%r12), %rax
	leaq	1(%rax), %rdi
	cmpq	$311, %rax
	ja	.L162
.L115:
	movq	(%r12,%rax,8), %rax
	movq	%rdi, 2496(%r12)
	movq	%rax, %rdi
	shrq	$29, %rdi
	andq	%rsi, %rdi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	salq	$17, %rdi
	andq	%rbx, %rdi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	salq	$37, %rdi
	andq	%rbp, %rdi
	xorq	%rdi, %rax
	movq	%rax, %rdi
	shrq	$43, %rdi
	xorq	%rdi, %rax
	jns	.L163
	movq	%rax, %rdi
	andl	$1, %eax
	pxor	%xmm0, %xmm0
	shrq	%rdi
	orq	%rax, %rdi
	cvtsi2sdq	%rdi, %xmm0
	addsd	%xmm0, %xmm0
	addsd	%xmm4, %xmm0
	mulsd	%xmm6, %xmm0
	comisd	%xmm5, %xmm0
	jb	.L123
.L160:
	movapd	%xmm5, %xmm0
	pxor	%xmm1, %xmm1
	movsd	%xmm3, (%rsp)
	call	nextafter
	movsd	(%rsp), %xmm3
	movsd	.LC2(%rip), %xmm6
	movabsq	$6148914691236517205, %rsi
	pxor	%xmm4, %xmm4
	movsd	.LC3(%rip), %xmm5
	jmp	.L123
	.p2align 4,,10
	.p2align 3
.L162:
	movq	%r12, %rax
	leaq	1248(%r12), %r10
	movq	%r12, %rdi
	.p2align 4,,10
	.p2align 3
.L117:
	movq	(%rdi), %r8
	movq	8(%rdi), %r9
	andq	$-2147483648, %r8
	andl	$2147483647, %r9d
	orq	%r9, %r8
	movq	%r8, %r9
	shrq	%r9
	xorq	1248(%rdi), %r9
	andl	$1, %r8d
	je	.L116
	xorq	%r14, %r9
.L116:
	movq	%r9, (%rdi)
	addq	$8, %rdi
	cmpq	%rdi, %r10
	jne	.L117
	leaq	1240(%r12), %r9
	.p2align 4,,10
	.p2align 3
.L119:
	movq	1248(%rax), %rdi
	movq	1256(%rax), %r8
	andq	$-2147483648, %rdi
	andl	$2147483647, %r8d
	orq	%r8, %rdi
	movq	%rdi, %r8
	shrq	%r8
	xorq	(%rax), %r8
	andl	$1, %edi
	je	.L118
	xorq	%r14, %r8
.L118:
	movq	%r8, 1248(%rax)
	addq	$8, %rax
	cmpq	%rax, %r9
	jne	.L119
	movq	2488(%r12), %rax
	movq	(%r12), %rdi
	andq	$-2147483648, %rax
	andl	$2147483647, %edi
	orq	%rdi, %rax
	movq	%rax, %rdi
	shrq	%rdi
	xorq	1240(%r12), %rdi
	testb	$1, %al
	je	.L120
	xorq	%r14, %rdi
.L120:
	movq	%rdi, 2488(%r12)
	xorl	%eax, %eax
	movl	$1, %edi
	jmp	.L115
.L161:
	movsd	%xmm3, 24(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm0, %xmm0
	subq	8(%rsp), %rax
	movl	$_ZSt4cout, %edi
	cvtsi2sdq	%rax, %xmm0
	movq	16(%rsp), %rax
	divsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rsp)
	movq	8(%rax), %rdx
	movq	(%rax), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	24(%rsp), %xmm3
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L129
	cmpb	$0, 56(%rbx)
	je	.L127
	movsbl	67(%rbx), %esi
.L128:
	movq	%rbp, %rdi
	movsd	%xmm3, 8(%rsp)
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$4, %edx
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm3
	movl	$_ZSt4cout, %edi
	movapd	%xmm3, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L129
	cmpb	$0, 56(%rbx)
	je	.L130
	movsbl	67(%rbx), %esi
.L131:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$5, %edx
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC7, %esi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L129
	cmpb	$0, 56(%rbp)
	je	.L132
	movsbl	67(%rbp), %esi
.L133:
	movq	%rbx, %rdi
	call	_ZNSo3putEc
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv
.L127:
	.cfi_restore_state
	movq	%rbx, %rdi
	movsd	%xmm3, 8(%rsp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movsd	8(%rsp), %xmm3
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L128
	movq	%rbx, %rdi
	call	*%rax
	movsd	8(%rsp), %xmm3
	movsbl	%al, %esi
	jmp	.L128
.L132:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L133
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L133
.L130:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L131
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L131
.L129:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE3179:
	.size	_Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .-_Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.section	.text._Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.p2align 4,,15
	.weak	_Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.type	_Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, @function
_Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_:
.LFB3199:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movabsq	$8589934597, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	$1000000, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movabsq	$-9223372036854775808, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm4, %xmm4
	fldl	.LC8(%rip)
	movsd	.LC3(%rip), %xmm3
	flds	.LC11(%rip)
	movq	%rax, 8(%rsp)
	flds	.LC12(%rip)
	jmp	.L173
	.p2align 4,,10
	.p2align 3
.L200:
	divsd	%xmm2, %xmm0
	movq	%r8, 2056(%r12)
	movq	%rdx, (%r12)
	comisd	%xmm3, %xmm0
	jnb	.L198
.L171:
	movsd	(%r14), %xmm2
	movsd	8(%r14), %xmm1
	subsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	addsd	%xmm1, %xmm4
	subl	$1, %r13d
	je	.L199
.L173:
	fnstcw	38(%rsp)
	movq	(%r12), %rdx
	movl	$2, %esi
	pxor	%xmm0, %xmm0
	movq	2056(%r12), %r8
	movapd	%xmm3, %xmm2
	movzwl	38(%rsp), %eax
	leaq	-1(%r8), %rcx
	orb	$12, %ah
	movw	%ax, 36(%rsp)
.L170:
	movq	%rcx, (%rsp)
	fildq	(%rsp)
	testq	%rcx, %rcx
	jns	.L165
	fadds	.LC10(%rip)
.L165:
	fdiv	%st(3), %st
	fmul	%st(2), %st
	fld	%st(1)
	fxch	%st(1)
	fcomi	%st(1), %st
	jnb	.L166
	fstp	%st(1)
	fldcw	36(%rsp)
	fistpq	24(%rsp)
	fldcw	38(%rsp)
	movq	24(%rsp), %rax
.L167:
	imulq	$16807, %rdx, %rcx
	leaq	(%r12,%rax,8), %r9
	movq	8(%r9), %r8
	movq	%rcx, %rax
	mulq	%r15
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rax, %rdx
	shrq	$30, %rdx
	movq	%rdx, %rax
	salq	$31, %rax
	subq	%rdx, %rax
	subq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rcx, 8(%r9)
	movq	%r8, %rcx
	subq	$1, %rcx
	js	.L168
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rcx, %xmm1
.L169:
	movsd	%xmm2, (%rsp)
	fldl	(%rsp)
	mulsd	%xmm2, %xmm1
	fmul	%st(3), %st
	addsd	%xmm1, %xmm0
	fstpl	40(%rsp)
	movsd	40(%rsp), %xmm2
	cmpl	$1, %esi
	je	.L200
	movl	$1, %esi
	jmp	.L170
	.p2align 4,,10
	.p2align 3
.L166:
	fsubp	%st, %st(1)
	fldcw	36(%rsp)
	fistpq	24(%rsp)
	fldcw	38(%rsp)
	movq	24(%rsp), %rax
	xorq	%rbp, %rax
	jmp	.L167
	.p2align 4,,10
	.p2align 3
.L168:
	movq	%rcx, %rax
	movq	%rcx, %r9
	pxor	%xmm1, %xmm1
	shrq	%rax
	andl	$1, %r9d
	orq	%r9, %rax
	cvtsi2sdq	%rax, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L169
	.p2align 4,,10
	.p2align 3
.L198:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	movapd	%xmm3, %xmm0
	pxor	%xmm1, %xmm1
	movsd	%xmm4, (%rsp)
	call	nextafter
	movsd	(%rsp), %xmm4
	fldl	.LC8(%rip)
	movsd	.LC3(%rip), %xmm3
	flds	.LC11(%rip)
	flds	.LC12(%rip)
	jmp	.L171
.L199:
	fstp	%st(0)
	fstp	%st(0)
	fstp	%st(0)
	movsd	%xmm4, 16(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	8(%rbx), %rdx
	movq	(%rbx), %rsi
	pxor	%xmm0, %xmm0
	subq	8(%rsp), %rax
	movl	$_ZSt4cout, %edi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	16(%rsp), %xmm4
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L177
	cmpb	$0, 56(%rbx)
	je	.L175
	movsbl	67(%rbx), %esi
.L176:
	movq	%rbp, %rdi
	movsd	%xmm4, 8(%rsp)
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$4, %edx
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm4
	movl	$_ZSt4cout, %edi
	movapd	%xmm4, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L177
	cmpb	$0, 56(%rbx)
	je	.L178
	movsbl	67(%rbx), %esi
.L179:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$5, %edx
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC7, %esi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L177
	cmpb	$0, 56(%rbp)
	je	.L180
	movsbl	67(%rbp), %esi
.L181:
	movq	%rbx, %rdi
	call	_ZNSo3putEc
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv
.L175:
	.cfi_restore_state
	movq	%rbx, %rdi
	movsd	%xmm4, 8(%rsp)
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movsd	8(%rsp), %xmm4
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L176
	movq	%rbx, %rdi
	call	*%rax
	movsd	8(%rsp), %xmm4
	movsbl	%al, %esi
	jmp	.L176
.L180:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L181
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L181
.L178:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L179
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L179
.L177:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE3199:
	.size	_Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .-_Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.section	.text._ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EE4seedEm,"axG",@progbits,_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EE4seedEm,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EE4seedEm
	.type	_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EE4seedEm, @function
_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EE4seedEm:
.LFB3287:
	.cfi_startproc
	movl	$19780503, %edx
	testq	%rsi, %rsi
	je	.L202
	movabsq	$730144469221, %rdx
	movq	%rsi, %rax
	mulq	%rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rax, %rdx
	shrq	$30, %rdx
	imulq	$2147483563, %rdx, %rdx
	subq	%rdx, %rsi
	movq	%rsi, %rdx
	jne	.L202
	movl	$1, %edx
.L202:
	movq	%rdi, %rcx
	leaq	192(%rdi), %r9
	movabsq	$730144469221, %r8
.L203:
	imulq	$40014, %rdx, %rsi
	addq	$8, %rcx
	movq	%rsi, %rax
	mulq	%r8
	movq	%rsi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rax, %rdx
	shrq	$30, %rdx
	imulq	$2147483563, %rdx, %rdx
	subq	%rdx, %rsi
	movq	%rsi, %rax
	movq	%rsi, %rdx
	andl	$16777215, %eax
	movq	%rax, -8(%rcx)
	cmpq	%r9, %rcx
	jne	.L203
	movq	$0, 200(%rdi)
	xorl	%eax, %eax
	cmpq	$0, 184(%rdi)
	sete	%al
	movq	%rax, 192(%rdi)
	ret
	.cfi_endproc
.LFE3287:
	.size	_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EE4seedEm, .-_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EE4seedEm
	.section	.text._ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EE4seedEm,"axG",@progbits,_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EE4seedEm,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EE4seedEm
	.type	_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EE4seedEm, @function
_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EE4seedEm:
.LFB3289:
	.cfi_startproc
	movl	$19780503, %edx
	testq	%rsi, %rsi
	je	.L209
	movabsq	$730144469221, %rdx
	movq	%rsi, %rax
	mulq	%rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rax, %rdx
	shrq	$30, %rdx
	imulq	$2147483563, %rdx, %rdx
	subq	%rdx, %rsi
	movq	%rsi, %rdx
	jne	.L209
	movl	$1, %edx
.L209:
	movq	%rdi, %r8
	leaq	96(%rdi), %r11
	movabsq	$730144469221, %r9
	movabsq	$281474976710655, %r10
	.p2align 4,,10
	.p2align 3
.L210:
	imulq	$40014, %rdx, %rcx
	addq	$8, %r8
	movq	%rcx, %rax
	movq	%rcx, %rsi
	mulq	%r9
	subq	%rdx, %rsi
	shrq	%rsi
	addq	%rdx, %rsi
	shrq	$30, %rsi
	imulq	$2147483563, %rsi, %rsi
	subq	%rsi, %rcx
	movq	%rcx, %rsi
	imulq	$40014, %rcx, %rcx
	movq	%rcx, %rax
	mulq	%r9
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rax, %rdx
	shrq	$30, %rdx
	imulq	$2147483563, %rdx, %rdx
	subq	%rdx, %rcx
	movq	%rcx, %rax
	movq	%rcx, %rdx
	salq	$32, %rax
	addq	%rax, %rsi
	andq	%r10, %rsi
	movq	%rsi, -8(%r8)
	cmpq	%r8, %r11
	jne	.L210
	xorl	%eax, %eax
	cmpq	$0, 88(%rdi)
	movq	$0, 104(%rdi)
	sete	%al
	movq	%rax, 96(%rdi)
	ret
	.cfi_endproc
.LFE3289:
	.size	_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EE4seedEm, .-_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EE4seedEm
	.section	.text._ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,comdat
	.p2align 4,,15
	.weak	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.type	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, @function
_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_:
.LFB3462:
	.cfi_startproc
	movq	4992(%rdi), %rdx
	movsd	.LC3(%rip), %xmm2
	pxor	%xmm0, %xmm0
	movl	$2, %r9d
	leaq	1816(%rdi), %r8
	movl	$2567483615, %ecx
	leaq	3168(%rdi), %rsi
	movsd	%xmm2, -24(%rsp)
	cmpq	$623, %rdx
	ja	.L216
.L243:
	movq	%rdx, %rax
	addq	$1, %rdx
.L217:
	movq	(%rdi,%rax,8), %rax
	movq	%rdx, 4992(%rdi)
	movq	%rax, %r10
	shrq	$11, %r10
	movl	%r10d, %r10d
	xorq	%r10, %rax
	movq	%rax, %r10
	salq	$7, %r10
	andl	$2636928640, %r10d
	xorq	%r10, %rax
	movq	%rax, %r10
	salq	$15, %r10
	andl	$4022730752, %r10d
	xorq	%r10, %rax
	movq	%rax, %r10
	shrq	$18, %r10
	xorq	%r10, %rax
	js	.L223
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L224:
	mulsd	-24(%rsp), %xmm1
	flds	.LC14(%rip)
	fmull	-24(%rsp)
	addsd	%xmm1, %xmm0
	fstpl	-24(%rsp)
	cmpl	$1, %r9d
	jne	.L228
	divsd	-24(%rsp), %xmm0
	comisd	%xmm2, %xmm0
	jnb	.L242
	ret
	.p2align 4,,10
	.p2align 3
.L228:
	movl	$1, %r9d
	cmpq	$623, %rdx
	jbe	.L243
.L216:
	movq	%rdi, %rdx
	movq	%rdi, %rax
	.p2align 4,,10
	.p2align 3
.L219:
	movq	(%rax), %r10
	movq	8(%rax), %r11
	andq	$-2147483648, %r10
	andl	$2147483647, %r11d
	orq	%r11, %r10
	movq	%r10, %r11
	shrq	%r11
	xorq	3176(%rax), %r11
	andl	$1, %r10d
	je	.L218
	xorq	%rcx, %r11
.L218:
	movq	%r11, (%rax)
	addq	$8, %rax
	cmpq	%rax, %r8
	jne	.L219
	.p2align 4,,10
	.p2align 3
.L221:
	movq	1816(%rdx), %rax
	movq	1824(%rdx), %r10
	andq	$-2147483648, %rax
	andl	$2147483647, %r10d
	orq	%r10, %rax
	movq	%rax, %r10
	shrq	%r10
	xorq	(%rdx), %r10
	testb	$1, %al
	je	.L220
	xorq	%rcx, %r10
.L220:
	movq	%r10, 1816(%rdx)
	addq	$8, %rdx
	cmpq	%rdx, %rsi
	jne	.L221
	movq	4984(%rdi), %rax
	movq	(%rdi), %rdx
	andq	$-2147483648, %rax
	andl	$2147483647, %edx
	orq	%rdx, %rax
	movq	%rax, %rdx
	shrq	%rdx
	xorq	3168(%rdi), %rdx
	testb	$1, %al
	je	.L222
	xorq	%rcx, %rdx
.L222:
	movq	%rdx, 4984(%rdi)
	xorl	%eax, %eax
	movl	$1, %edx
	jmp	.L217
	.p2align 4,,10
	.p2align 3
.L223:
	movq	%rax, %r10
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%r10
	orq	%rax, %r10
	cvtsi2sdq	%r10, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L224
	.p2align 4,,10
	.p2align 3
.L242:
	pxor	%xmm1, %xmm1
	movapd	%xmm2, %xmm0
	jmp	nextafter
	.cfi_endproc
.LFE3462:
	.size	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, .-_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.section	.text._Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.p2align 4,,15
	.weak	_Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.type	_Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, @function
_Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_:
.LFB3175:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	$1000000, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm4, %xmm4
	movq	%rax, %r14
	movsd	%xmm4, (%rsp)
	.p2align 4,,10
	.p2align 3
.L245:
	movq	%r12, %rdi
	call	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	movsd	0(%rbp), %xmm2
	movsd	8(%rbp), %xmm1
	subsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	addsd	(%rsp), %xmm1
	movsd	%xmm1, (%rsp)
	subl	$1, %ebx
	jne	.L245
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	8(%r13), %rdx
	movq	0(%r13), %rsi
	pxor	%xmm0, %xmm0
	subq	%r14, %rax
	movl	$_ZSt4cout, %edi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC4(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L249
	cmpb	$0, 56(%rbx)
	je	.L247
	movsbl	67(%rbx), %esi
.L248:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$4, %edx
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L249
	cmpb	$0, 56(%rbx)
	je	.L250
	movsbl	67(%rbx), %esi
.L251:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$5, %edx
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC7, %esi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L249
	cmpb	$0, 56(%rbp)
	je	.L252
	movsbl	67(%rbp), %esi
.L253:
	movq	%rbx, %rdi
	call	_ZNSo3putEc
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv
.L247:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L248
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L248
.L252:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L253
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L253
.L250:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L251
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L251
.L249:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE3175:
	.size	_Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .-_Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.section	.text._ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EEclEv,"axG",@progbits,_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EEclEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EEclEv
	.type	_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EEclEv, @function
_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EEclEv:
.LFB3503:
	.cfi_startproc
	movq	200(%rdi), %rdx
	movq	%rdx, %rax
	leaq	14(%rdx), %rcx
	leaq	(%rdi,%rdx,8), %rsi
	subq	$10, %rax
	cmovs	%rcx, %rax
	movq	192(%rdi), %rcx
	addq	(%rsi), %rcx
	movq	(%rdi,%rax,8), %rax
	cmpq	%rcx, %rax
	jb	.L270
	subq	%rcx, %rax
	xorl	%ecx, %ecx
.L271:
	addq	$1, %rdx
	movq	%rcx, 192(%rdi)
	movl	$0, %ecx
	cmpq	$23, %rdx
	movq	%rax, (%rsi)
	cmova	%rcx, %rdx
	movq	%rdx, 200(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L270:
	subq	%rcx, %rax
	movl	$1, %ecx
	addq	$16777216, %rax
	jmp	.L271
	.cfi_endproc
.LFE3503:
	.size	_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EEclEv, .-_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EEclEv
	.section	.text._Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.p2align 4,,15
	.weak	_Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.type	_Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, @function
_Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_:
.LFB3183:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	$1000000, %ebx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	$0x000000000, (%rsp)
	movq	%rax, %r13
	.p2align 4,,10
	.p2align 3
.L280:
	movsd	.LC3(%rip), %xmm2
	movl	$3, %r14d
	pxor	%xmm0, %xmm0
.L277:
	movq	%rbp, %rdi
	movsd	%xmm2, 16(%rsp)
	movsd	%xmm0, 8(%rsp)
	call	_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EEclEv
	movsd	8(%rsp), %xmm0
	movsd	16(%rsp), %xmm2
	testq	%rax, %rax
	js	.L275
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L276:
	movsd	%xmm2, 8(%rsp)
	flds	.LC15(%rip)
	fldl	8(%rsp)
	mulsd	%xmm2, %xmm1
	fmulp	%st, %st(1)
	addsd	%xmm1, %xmm0
	fstpl	24(%rsp)
	movsd	24(%rsp), %xmm2
	subq	$1, %r14
	jne	.L277
	divsd	%xmm2, %xmm0
	comisd	.LC3(%rip), %xmm0
	jnb	.L305
.L278:
	movsd	(%r15), %xmm2
	movsd	8(%r15), %xmm1
	subsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	addsd	(%rsp), %xmm1
	movsd	%xmm1, (%rsp)
	subl	$1, %ebx
	jne	.L280
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	8(%r12), %rdx
	movq	(%r12), %rsi
	pxor	%xmm0, %xmm0
	subq	%r13, %rax
	movl	$_ZSt4cout, %edi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC4(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L284
	cmpb	$0, 56(%rbx)
	je	.L282
	movsbl	67(%rbx), %esi
.L283:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$4, %edx
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L284
	cmpb	$0, 56(%rbx)
	je	.L285
	movsbl	67(%rbx), %esi
.L286:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$5, %edx
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC7, %esi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L284
	cmpb	$0, 56(%rbp)
	je	.L287
	movsbl	67(%rbp), %esi
.L288:
	movq	%rbx, %rdi
	call	_ZNSo3putEc
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv
	.p2align 4,,10
	.p2align 3
.L275:
	.cfi_restore_state
	movq	%rax, %rcx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rcx
	orq	%rax, %rcx
	cvtsi2sdq	%rcx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L276
	.p2align 4,,10
	.p2align 3
.L305:
	movsd	.LC3(%rip), %xmm0
	pxor	%xmm1, %xmm1
	call	nextafter
	jmp	.L278
.L282:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L283
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L283
.L287:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L288
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L288
.L285:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L286
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L286
.L284:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE3183:
	.size	_Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .-_Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.section	.text._Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.p2align 4,,15
	.weak	_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.type	_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, @function
_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_:
.LFB3191:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	$223, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$1000000, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 32(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	$0x000000000, 16(%rsp)
	movq	%rax, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L316:
	movq	.LC3(%rip), %rax
	movl	$3, %ebp
	movq	$0x000000000, 8(%rsp)
	movq	%rax, (%rsp)
.L313:
	movq	208(%rbx), %rax
	cmpq	$22, %rax
	ja	.L307
	addq	$1, %rax
.L308:
	movq	%rax, 208(%rbx)
	movq	%rbx, %rdi
	call	_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EEclEv
	testq	%rax, %rax
	js	.L311
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
.L312:
	mulsd	(%rsp), %xmm0
	flds	.LC15(%rip)
	fmull	(%rsp)
	addsd	8(%rsp), %xmm0
	movsd	%xmm0, 8(%rsp)
	fstpl	(%rsp)
	subq	$1, %rbp
	jne	.L313
	divsd	(%rsp), %xmm0
	comisd	.LC3(%rip), %xmm0
	jnb	.L345
.L314:
	movsd	(%r14), %xmm2
	movsd	8(%r14), %xmm1
	subsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	addsd	16(%rsp), %xmm1
	movsd	%xmm1, 16(%rsp)
	subl	$1, %r12d
	jne	.L316
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm0, %xmm0
	subq	24(%rsp), %rax
	movl	$_ZSt4cout, %edi
	cvtsi2sdq	%rax, %xmm0
	movq	32(%rsp), %rax
	divsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rsp)
	movq	8(%rax), %rdx
	movq	(%rax), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L320
	cmpb	$0, 56(%rbx)
	je	.L318
	movsbl	67(%rbx), %esi
.L319:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$4, %edx
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	16(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L320
	cmpb	$0, 56(%rbx)
	je	.L321
	movsbl	67(%rbx), %esi
.L322:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$5, %edx
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC7, %esi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L320
	cmpb	$0, 56(%rbp)
	je	.L323
	movsbl	67(%rbp), %esi
.L324:
	movq	%rbx, %rdi
	call	_ZNSo3putEc
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv
	.p2align 4,,10
	.p2align 3
.L311:
	.cfi_restore_state
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm0, %xmm0
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L312
	.p2align 4,,10
	.p2align 3
.L307:
	movq	%r13, %r15
	subq	%rax, %r15
	je	.L310
	.p2align 4,,10
	.p2align 3
.L309:
	movq	%rbx, %rdi
	call	_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EEclEv
	subq	$1, %r15
	jne	.L309
.L310:
	movl	$1, %eax
	jmp	.L308
	.p2align 4,,10
	.p2align 3
.L345:
	movsd	.LC3(%rip), %xmm0
	pxor	%xmm1, %xmm1
	call	nextafter
	jmp	.L314
.L318:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L319
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L319
.L323:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L324
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L324
.L321:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L322
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L322
.L320:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE3191:
	.size	_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .-_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.section	.text._ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EEclEv,"axG",@progbits,_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EEclEv,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EEclEv
	.type	_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EEclEv, @function
_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EEclEv:
.LFB3504:
	.cfi_startproc
	movq	104(%rdi), %rdx
	movq	%rdx, %rax
	leaq	7(%rdx), %rcx
	leaq	(%rdi,%rdx,8), %rsi
	subq	$5, %rax
	cmovs	%rcx, %rax
	movq	96(%rdi), %rcx
	addq	(%rsi), %rcx
	movq	(%rdi,%rax,8), %rax
	cmpq	%rcx, %rax
	jb	.L348
	subq	%rcx, %rax
	xorl	%ecx, %ecx
.L349:
	addq	$1, %rdx
	movq	%rcx, 96(%rdi)
	movl	$0, %ecx
	cmpq	$11, %rdx
	movq	%rax, (%rsi)
	cmova	%rcx, %rdx
	movq	%rdx, 104(%rdi)
	ret
	.p2align 4,,10
	.p2align 3
.L348:
	movabsq	$281474976710656, %r8
	subq	%rcx, %r8
	movl	$1, %ecx
	addq	%r8, %rax
	jmp	.L349
	.cfi_endproc
.LFE3504:
	.size	_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EEclEv, .-_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EEclEv
	.section	.text._Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.p2align 4,,15
	.weak	_Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.type	_Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, @function
_Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_:
.LFB3187:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	$1000000, %ebx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	$0x000000000, (%rsp)
	movq	%rax, %r14
	jmp	.L359
	.p2align 4,,10
	.p2align 3
.L385:
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
.L354:
	pxor	%xmm3, %xmm3
	movq	%r12, %rdi
	addsd	%xmm3, %xmm0
	movsd	%xmm0, 8(%rsp)
	call	_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EEclEv
	testq	%rax, %rax
	js	.L355
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
.L356:
	mulsd	.LC16(%rip), %xmm0
	addsd	8(%rsp), %xmm0
	mulsd	.LC17(%rip), %xmm0
	comisd	.LC3(%rip), %xmm0
	jnb	.L383
.L357:
	movsd	0(%rbp), %xmm2
	movsd	8(%rbp), %xmm1
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	addsd	(%rsp), %xmm0
	movsd	%xmm0, (%rsp)
	subl	$1, %ebx
	je	.L384
.L359:
	movq	%r12, %rdi
	call	_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EEclEv
	testq	%rax, %rax
	jns	.L385
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm0, %xmm0
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L354
	.p2align 4,,10
	.p2align 3
.L355:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm0, %xmm0
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L356
	.p2align 4,,10
	.p2align 3
.L383:
	movsd	.LC3(%rip), %xmm0
	pxor	%xmm1, %xmm1
	call	nextafter
	jmp	.L357
.L384:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	8(%r13), %rdx
	movq	0(%r13), %rsi
	pxor	%xmm0, %xmm0
	subq	%r14, %rax
	movl	$_ZSt4cout, %edi
	cvtsi2sdq	%rax, %xmm0
	divsd	.LC4(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L363
	cmpb	$0, 56(%rbx)
	je	.L361
	movsbl	67(%rbx), %esi
.L362:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$4, %edx
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L363
	cmpb	$0, 56(%rbx)
	je	.L364
	movsbl	67(%rbx), %esi
.L365:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$5, %edx
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC7, %esi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L363
	cmpb	$0, 56(%rbp)
	je	.L366
	movsbl	67(%rbp), %esi
.L367:
	movq	%rbx, %rdi
	call	_ZNSo3putEc
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv
.L361:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L362
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L362
.L366:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L367
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L367
.L364:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L365
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L365
.L363:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE3187:
	.size	_Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .-_Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.section	.text._Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.p2align 4,,15
	.weak	_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.type	_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, @function
_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_:
.LFB3195:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdx, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movl	$389, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movl	$1000000, %ebp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	%rdi, 32(%rsp)
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movq	$0x000000000, 16(%rsp)
	movq	%rax, 24(%rsp)
	jmp	.L396
	.p2align 4,,10
	.p2align 3
.L427:
	divsd	%xmm4, %xmm3
	comisd	.LC3(%rip), %xmm3
	movapd	%xmm3, %xmm0
	jnb	.L425
.L394:
	movsd	(%r14), %xmm2
	movsd	8(%r14), %xmm1
	subsd	%xmm2, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm2, %xmm1
	addsd	16(%rsp), %xmm1
	movsd	%xmm1, 16(%rsp)
	subl	$1, %ebp
	je	.L426
.L396:
	movq	.LC3(%rip), %rax
	movl	$2, %r12d
	movq	$0x000000000, 8(%rsp)
	movq	%rax, (%rsp)
	movq	112(%rbx), %rax
	cmpq	$10, %rax
	ja	.L387
.L428:
	addq	$1, %rax
.L388:
	movq	%rax, 112(%rbx)
	movq	%rbx, %rdi
	call	_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EEclEv
	testq	%rax, %rax
	js	.L391
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
.L392:
	mulsd	(%rsp), %xmm0
	flds	.LC18(%rip)
	fmull	(%rsp)
	movsd	8(%rsp), %xmm3
	addsd	%xmm0, %xmm3
	fstpl	40(%rsp)
	movsd	40(%rsp), %xmm4
	movsd	%xmm4, (%rsp)
	movsd	%xmm3, 8(%rsp)
	cmpl	$1, %r12d
	je	.L427
	movq	112(%rbx), %rax
	movl	$1, %r12d
	cmpq	$10, %rax
	jbe	.L428
.L387:
	movq	%r13, %r15
	subq	%rax, %r15
	je	.L390
	.p2align 4,,10
	.p2align 3
.L389:
	movq	%rbx, %rdi
	call	_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EEclEv
	subq	$1, %r15
	jne	.L389
.L390:
	movl	$1, %eax
	jmp	.L388
	.p2align 4,,10
	.p2align 3
.L391:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm0, %xmm0
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L392
	.p2align 4,,10
	.p2align 3
.L425:
	movsd	.LC3(%rip), %xmm0
	pxor	%xmm1, %xmm1
	call	nextafter
	jmp	.L394
.L426:
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm0, %xmm0
	subq	24(%rsp), %rax
	movl	$_ZSt4cout, %edi
	cvtsi2sdq	%rax, %xmm0
	movq	32(%rsp), %rax
	divsd	.LC4(%rip), %xmm0
	movsd	%xmm0, (%rsp)
	movq	8(%rax), %rdx
	movq	(%rax), %rsi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L400
	cmpb	$0, 56(%rbx)
	je	.L398
	movsbl	67(%rbx), %esi
.L399:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$4, %edx
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	16(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %rbx
	testq	%rbx, %rbx
	je	.L400
	cmpb	$0, 56(%rbx)
	je	.L401
	movsbl	67(%rbx), %esi
.L402:
	movq	%rbp, %rdi
	call	_ZNSo3putEc
	movq	%rax, %rdi
	call	_ZNSo5flushEv
	movl	$5, %edx
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC7, %esi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L400
	cmpb	$0, 56(%rbp)
	je	.L403
	movsbl	67(%rbp), %esi
.L404:
	movq	%rbx, %rdi
	call	_ZNSo3putEc
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv
.L398:
	.cfi_restore_state
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L399
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L399
.L403:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	0(%rbp), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L404
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L404
.L401:
	movq	%rbx, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	$_ZNKSt5ctypeIcE8do_widenEc, %rax
	je	.L402
	movq	%rbx, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L402
.L400:
	call	_ZSt16__throw_bad_castv
	.cfi_endproc
.LFE3195:
	.size	_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .-_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC20:
	.string	"rand"
.LC21:
	.string	"default"
.LC22:
	.string	"random_device"
.LC23:
	.string	"minstd_rand0"
.LC24:
	.string	"minstd_rand"
.LC25:
	.string	"mt19937"
.LC26:
	.string	"mt19937_64"
.LC27:
	.string	"ranlux24_base"
.LC28:
	.string	"ranlux48_base"
.LC29:
	.string	"ranlux24"
.LC30:
	.string	"ranlux48"
.LC31:
	.string	"knuth_b"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB32:
	.section	.text.startup,"ax",@progbits
.LHOTB32:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2943:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2943
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%edi, %edi
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	$1000000, %ebx
	subq	$10120, %rsp
	.cfi_def_cfa_offset 10144
	call	time
	movl	%eax, %edi
	call	srand
	call	_ZNSt6chrono3_V212system_clock3nowEv
	pxor	%xmm3, %xmm3
	movq	%rax, %rbp
	movsd	%xmm3, (%rsp)
	.p2align 4,,10
	.p2align 3
.L430:
	call	rand
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	divsd	.LC19(%rip), %xmm0
	addsd	(%rsp), %xmm0
	movsd	%xmm0, (%rsp)
	subl	$1, %ebx
	jne	.L430
	call	_ZNSt6chrono3_V212system_clock3nowEv
	movl	$4, %edx
	movl	$.LC20, %esi
	movl	$_ZSt4cout, %edi
	subq	%rbp, %rax
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
	divsd	.LC4(%rip), %xmm1
	movsd	%xmm1, 8(%rsp)
.LEHB0:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$4, %edx
	movl	$.LC5, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	(%rsp), %xmm0
	movl	$_ZSt4cout, %edi
	call	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$5, %edx
	movl	$.LC6, %esi
	movl	$_ZSt4cout, %edi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movsd	8(%rsp), %xmm1
	movl	$_ZSt4cout, %edi
	movapd	%xmm1, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_
	movl	$1, %edx
	movl	$.LC7, %esi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	movl	$.LC21, %esi
	leaq	5104(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.28
.LEHE0:
	leaq	5104(%rsp), %rsi
	leaq	96(%rsp), %rdi
.LEHB1:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE1:
	movq	5104(%rsp), %rdi
	leaq	5120(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L431
	call	_ZdlPv
.L431:
	movq	.LC3(%rip), %rax
	movl	$.LC21, %esi
	leaq	32(%rsp), %rdi
	movq	$0x000000000, 16(%rsp)
	movq	%rax, 24(%rsp)
.LEHB2:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.28
.LEHE2:
	leaq	32(%rsp), %rsi
	leaq	5104(%rsp), %rdi
.LEHB3:
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE3:
	movl	$.LC22, %esi
	leaq	64(%rsp), %rdi
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.28
.LEHE4:
	leaq	16(%rsp), %rdx
	leaq	5104(%rsp), %rsi
	leaq	64(%rsp), %rdi
.LEHB5:
	call	_Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LEHE5:
	movq	64(%rsp), %rdi
	leaq	80(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L432
	call	_ZdlPv
.L432:
	leaq	5104(%rsp), %rdi
	call	_ZNSt13random_device7_M_finiEv
	movq	32(%rsp), %rdi
	leaq	48(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L433
	call	_ZdlPv
.L433:
	leaq	96(%rsp), %rdi
.LEHB6:
	call	_ZNSt13random_device9_M_getvalEv
	movl	%eax, %ecx
	movl	$.LC23, %esi
	movabsq	$8589934597, %rdx
	movq	%rcx, %rax
	leaq	5104(%rsp), %rdi
	mulq	%rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	movq	%rax, %rdx
	salq	$31, %rdx
	subq	%rax, %rdx
	subq	%rdx, %rcx
	movl	$1, %edx
	movq	%rcx, %rax
	cmove	%rdx, %rax
	movq	%rax, 64(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.28
.LEHE6:
	leaq	16(%rsp), %rdx
	leaq	64(%rsp), %rsi
	leaq	5104(%rsp), %rdi
.LEHB7:
	call	_Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LEHE7:
	movq	5104(%rsp), %rdi
	leaq	5120(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L435
	call	_ZdlPv
.L435:
	leaq	96(%rsp), %rdi
.LEHB8:
	call	_ZNSt13random_device9_M_getvalEv
	movl	%eax, %ecx
	movl	$.LC24, %esi
	movabsq	$8589934597, %rdx
	movq	%rcx, %rax
	leaq	5104(%rsp), %rdi
	mulq	%rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	movq	%rax, %rdx
	salq	$31, %rdx
	subq	%rax, %rdx
	subq	%rdx, %rcx
	movl	$1, %edx
	movq	%rcx, %rax
	cmove	%rdx, %rax
	movq	%rax, 64(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.28
.LEHE8:
	leaq	16(%rsp), %rdx
	leaq	64(%rsp), %rsi
	leaq	5104(%rsp), %rdi
.LEHB9:
	call	_Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LEHE9:
	movq	5104(%rsp), %rdi
	leaq	5120(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L437
	call	_ZdlPv
.L437:
	leaq	96(%rsp), %rdi
.LEHB10:
	call	_ZNSt13random_device9_M_getvalEv
	movl	%eax, %ecx
	movl	$1, %edx
	movq	%rcx, 5104(%rsp)
	jmp	.L439
	.p2align 4,,10
	.p2align 3
.L506:
	movq	5096(%rsp,%rdx,8), %rcx
.L439:
	movq	%rcx, %rax
	shrq	$30, %rax
	xorq	%rcx, %rax
	imulq	$1812433253, %rax, %rax
	addl	%edx, %eax
	movq	%rax, 5104(%rsp,%rdx,8)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	.L506
	movl	$.LC25, %esi
	leaq	64(%rsp), %rdi
	movq	$624, 10096(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.28
.LEHE10:
	leaq	16(%rsp), %rdx
	leaq	5104(%rsp), %rsi
	leaq	64(%rsp), %rdi
.LEHB11:
	call	_Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LEHE11:
	movq	64(%rsp), %rdi
	leaq	80(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L440
	call	_ZdlPv
.L440:
	leaq	96(%rsp), %rdi
.LEHB12:
	call	_ZNSt13random_device9_M_getvalEv
	movl	%eax, %ecx
	movl	$1, %edx
	movabsq	$6364136223846793005, %rsi
	movq	%rcx, 5104(%rsp)
	jmp	.L442
	.p2align 4,,10
	.p2align 3
.L507:
	movq	5096(%rsp,%rdx,8), %rcx
.L442:
	movq	%rcx, %rax
	shrq	$62, %rax
	xorq	%rcx, %rax
	imulq	%rsi, %rax
	addq	%rdx, %rax
	movq	%rax, 5104(%rsp,%rdx,8)
	addq	$1, %rdx
	cmpq	$312, %rdx
	jne	.L507
	movl	$.LC26, %esi
	leaq	64(%rsp), %rdi
	movq	$312, 7600(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.28
.LEHE12:
	leaq	16(%rsp), %rdx
	leaq	5104(%rsp), %rsi
	leaq	64(%rsp), %rdi
.LEHB13:
	call	_Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LEHE13:
	movq	64(%rsp), %rdi
	leaq	80(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L443
	call	_ZdlPv
.L443:
	leaq	96(%rsp), %rdi
.LEHB14:
	call	_ZNSt13random_device9_M_getvalEv
	movl	%eax, %esi
	leaq	5104(%rsp), %rdi
	call	_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EE4seedEm
	movl	$.LC27, %esi
	leaq	64(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.28
.LEHE14:
	leaq	16(%rsp), %rdx
	leaq	5104(%rsp), %rsi
	leaq	64(%rsp), %rdi
.LEHB15:
	call	_Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LEHE15:
	movq	64(%rsp), %rdi
	leaq	80(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L444
	call	_ZdlPv
.L444:
	leaq	96(%rsp), %rdi
.LEHB16:
	call	_ZNSt13random_device9_M_getvalEv
	movl	%eax, %esi
	leaq	5104(%rsp), %rdi
	call	_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EE4seedEm
	movl	$.LC28, %esi
	leaq	64(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.28
.LEHE16:
	leaq	16(%rsp), %rdx
	leaq	5104(%rsp), %rsi
	leaq	64(%rsp), %rdi
.LEHB17:
	call	_Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LEHE17:
	movq	64(%rsp), %rdi
	leaq	80(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L445
	call	_ZdlPv
.L445:
	leaq	96(%rsp), %rdi
.LEHB18:
	call	_ZNSt13random_device9_M_getvalEv
	movl	%eax, %esi
	leaq	5104(%rsp), %rdi
	call	_ZNSt26subtract_with_carry_engineImLm24ELm10ELm24EE4seedEm
	movl	$.LC29, %esi
	leaq	64(%rsp), %rdi
	movq	$0, 5312(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.28
.LEHE18:
	leaq	16(%rsp), %rdx
	leaq	5104(%rsp), %rsi
	leaq	64(%rsp), %rdi
.LEHB19:
	call	_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LEHE19:
	movq	64(%rsp), %rdi
	leaq	80(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L446
	call	_ZdlPv
.L446:
	leaq	96(%rsp), %rdi
.LEHB20:
	call	_ZNSt13random_device9_M_getvalEv
	movl	%eax, %esi
	leaq	5104(%rsp), %rdi
	call	_ZNSt26subtract_with_carry_engineImLm48ELm5ELm12EE4seedEm
	movl	$.LC30, %esi
	leaq	64(%rsp), %rdi
	movq	$0, 5216(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.28
.LEHE20:
	leaq	16(%rsp), %rdx
	leaq	5104(%rsp), %rsi
	leaq	64(%rsp), %rdi
.LEHB21:
	call	_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LEHE21:
	movq	64(%rsp), %rdi
	leaq	80(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L447
	call	_ZdlPv
.L447:
	leaq	96(%rsp), %rdi
.LEHB22:
	call	_ZNSt13random_device9_M_getvalEv
	movabsq	$8589934597, %rdi
	movl	%eax, %ecx
	movq	%rcx, %rax
	mulq	%rdi
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rax, %rdx
	shrq	$30, %rdx
	movq	%rdx, %rax
	salq	$31, %rax
	subq	%rdx, %rax
	subq	%rax, %rcx
	movl	$1, %eax
	movq	%rcx, %rdx
	leaq	5112(%rsp), %rcx
	cmove	%rax, %rdx
	leaq	5104(%rsp), %rax
	leaq	2056(%rax), %r8
	.p2align 4,,10
	.p2align 3
.L449:
	imulq	$16807, %rdx, %rsi
	addq	$8, %rcx
	movq	%rsi, %rax
	mulq	%rdi
	movq	%rsi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rax, %rdx
	shrq	$30, %rdx
	movq	%rdx, %rax
	salq	$31, %rax
	subq	%rdx, %rax
	subq	%rax, %rsi
	movq	%rsi, -8(%rcx)
	movq	%rsi, %rdx
	cmpq	%rcx, %r8
	jne	.L449
	imulq	$16807, %rsi, %rcx
	movl	$.LC31, %esi
	movq	%rcx, %rax
	mulq	%rdi
	movq	%rcx, %rax
	leaq	64(%rsp), %rdi
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	movq	%rax, %rdx
	salq	$31, %rdx
	subq	%rax, %rdx
	subq	%rdx, %rcx
	movq	%rcx, 5104(%rsp)
	movq	%rcx, 7160(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_.isra.28
.LEHE22:
	leaq	16(%rsp), %rdx
	leaq	5104(%rsp), %rsi
	leaq	64(%rsp), %rdi
.LEHB23:
	call	_Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LEHE23:
	movq	64(%rsp), %rdi
	leaq	80(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L450
	call	_ZdlPv
.L450:
	leaq	96(%rsp), %rdi
	call	_ZNSt13random_device7_M_finiEv
	addq	$10120, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.L477:
	.cfi_restore_state
	movq	%rax, %rbx
	jmp	.L451
.L490:
	movq	%rax, %rbx
	jmp	.L475
.L489:
	movq	%rax, %rbx
	jmp	.L473
.L488:
	movq	%rax, %rbx
	jmp	.L473
.L487:
	movq	%rax, %rbx
	jmp	.L473
.L486:
	movq	%rax, %rbx
	jmp	.L473
.L485:
	movq	%rax, %rbx
	jmp	.L473
.L484:
	movq	%rax, %rbx
	jmp	.L473
.L483:
	movq	%rax, %rbx
	jmp	.L461
.L482:
	movq	%rax, %rbx
	jmp	.L459
.L481:
	movq	%rax, %rbx
	jmp	.L453
.L480:
	movq	%rax, %rbx
	jmp	.L455
.L479:
	movq	%rax, %rbx
	jmp	.L456
.L478:
	movq	%rax, %rbx
	jmp	.L458
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2943:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2943-.LLSDACSB2943
.LLSDACSB2943:
	.uleb128 .LEHB0-.LFB2943
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2943
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L477-.LFB2943
	.uleb128 0
	.uleb128 .LEHB2-.LFB2943
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L478-.LFB2943
	.uleb128 0
	.uleb128 .LEHB3-.LFB2943
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L479-.LFB2943
	.uleb128 0
	.uleb128 .LEHB4-.LFB2943
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L480-.LFB2943
	.uleb128 0
	.uleb128 .LEHB5-.LFB2943
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L481-.LFB2943
	.uleb128 0
	.uleb128 .LEHB6-.LFB2943
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L478-.LFB2943
	.uleb128 0
	.uleb128 .LEHB7-.LFB2943
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L482-.LFB2943
	.uleb128 0
	.uleb128 .LEHB8-.LFB2943
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L478-.LFB2943
	.uleb128 0
	.uleb128 .LEHB9-.LFB2943
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L483-.LFB2943
	.uleb128 0
	.uleb128 .LEHB10-.LFB2943
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L478-.LFB2943
	.uleb128 0
	.uleb128 .LEHB11-.LFB2943
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L484-.LFB2943
	.uleb128 0
	.uleb128 .LEHB12-.LFB2943
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L478-.LFB2943
	.uleb128 0
	.uleb128 .LEHB13-.LFB2943
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L485-.LFB2943
	.uleb128 0
	.uleb128 .LEHB14-.LFB2943
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L478-.LFB2943
	.uleb128 0
	.uleb128 .LEHB15-.LFB2943
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L486-.LFB2943
	.uleb128 0
	.uleb128 .LEHB16-.LFB2943
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L478-.LFB2943
	.uleb128 0
	.uleb128 .LEHB17-.LFB2943
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L487-.LFB2943
	.uleb128 0
	.uleb128 .LEHB18-.LFB2943
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L478-.LFB2943
	.uleb128 0
	.uleb128 .LEHB19-.LFB2943
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L488-.LFB2943
	.uleb128 0
	.uleb128 .LEHB20-.LFB2943
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L478-.LFB2943
	.uleb128 0
	.uleb128 .LEHB21-.LFB2943
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L489-.LFB2943
	.uleb128 0
	.uleb128 .LEHB22-.LFB2943
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L478-.LFB2943
	.uleb128 0
	.uleb128 .LEHB23-.LFB2943
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L490-.LFB2943
	.uleb128 0
.LLSDACSE2943:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDAC2943
	.type	main.cold.52, @function
main.cold.52:
.LFSB2943:
.L451:
	.cfi_def_cfa_offset 10144
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	movq	5104(%rsp), %rdi
	leaq	5120(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L452
	call	_ZdlPv
.L452:
	movq	%rbx, %rdi
.LEHB24:
	call	_Unwind_Resume
.LEHE24:
.L475:
	movq	64(%rsp), %rdi
	leaq	80(%rsp), %rdx
	cmpq	%rdx, %rdi
	je	.L458
.L500:
	call	_ZdlPv
.L458:
	leaq	96(%rsp), %rdi
	call	_ZNSt13random_device7_M_finiEv
	movq	%rbx, %rdi
.LEHB25:
	call	_Unwind_Resume
.LEHE25:
.L473:
	movq	64(%rsp), %rdi
	leaq	80(%rsp), %rax
	cmpq	%rax, %rdi
	jne	.L500
	jmp	.L458
.L461:
	movq	5104(%rsp), %rdi
	leaq	5120(%rsp), %rdx
	cmpq	%rdx, %rdi
	jne	.L500
	jmp	.L458
.L459:
	movq	5104(%rsp), %rdi
	leaq	5120(%rsp), %rax
	cmpq	%rax, %rdi
	jne	.L500
	jmp	.L458
.L453:
	movq	64(%rsp), %rdi
	leaq	80(%rsp), %rax
	cmpq	%rax, %rdi
	je	.L455
	call	_ZdlPv
.L455:
	leaq	5104(%rsp), %rdi
	call	_ZNSt13random_device7_M_finiEv
.L456:
	movq	32(%rsp), %rdi
	leaq	48(%rsp), %rdx
	cmpq	%rdx, %rdi
	jne	.L500
	jmp	.L458
	.cfi_endproc
.LFE2943:
	.section	.gcc_except_table
.LLSDAC2943:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC2943-.LLSDACSBC2943
.LLSDACSBC2943:
	.uleb128 .LEHB24-.LCOLDB32
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LCOLDB32
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSEC2943:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold.52, .-main.cold.52
.LCOLDE32:
	.section	.text.startup
.LHOTE32:
	.p2align 4,,15
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB3518:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit
	.cfi_endproc
.LFE3518:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1106247680
	.align 8
.LC2:
	.long	0
	.long	1005584384
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 8
.LC4:
	.long	0
	.long	1104006501
	.align 8
.LC8:
	.long	4286578688
	.long	1105199103
	.align 8
.LC9:
	.long	4278190080
	.long	1137704959
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC10:
	.long	1602224128
	.align 4
.LC11:
	.long	1132462080
	.align 4
.LC12:
	.long	1593835520
	.align 4
.LC14:
	.long	1333788672
	.align 4
.LC15:
	.long	1266679808
	.section	.rodata.cst8
	.align 8
.LC16:
	.long	0
	.long	1123024896
	.align 8
.LC17:
	.long	0
	.long	972029952
	.section	.rodata.cst4
	.align 4
.LC18:
	.long	1468006400
	.section	.rodata.cst8
	.align 8
.LC19:
	.long	4290772992
	.long	1105199103
	.hidden	__dso_handle
	.ident	"GCC: (GNU) 8.2.1 20181215 (Red Hat 8.2.1-6)"
	.section	.note.GNU-stack,"",@progbits
