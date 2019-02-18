	.text
	.file	"benchmark.cpp"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function main
.LCPI0_0:
	.quad	4746794007244308480     # double 2147483647
.LCPI0_1:
	.quad	4741671816366391296     # double 1.0E+9
.LCPI0_2:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_3:
	.quad	8                       # 0x8
	.quad	3761201084533465458     # 0x343278756c6e6172
.LCPI0_4:
	.quad	8                       # 0x8
	.quad	4049994410638598514     # 0x383478756c6e6172
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$10096, %rsp            # imm = 0x2770
	.cfi_def_cfa_offset 10144
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	xorl	%edi, %edi
	callq	time
	movl	%eax, %edi
	callq	srand
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movl	$1000000, %ebx          # imm = 0xF4240
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	callq	rand
	xorps	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	.LCPI0_0(%rip), %xmm0
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 40(%rsp)         # 8-byte Spill
	addl	$-1, %ebx
	jne	.LBB0_1
# %bb.2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r15
	movl	$_ZSt4cout, %edi
	movl	$.L.str, %esi
	movl	$4, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_115
# %bb.3:
	cmpb	$0, 56(%rbx)
	je	.LBB0_5
# %bb.4:
	movb	67(%rbx), %al
	jmp	.LBB0_6
.LBB0_5:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB0_6:
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$4, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_115
# %bb.7:
	subq	%r14, %r15
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%r15, %xmm0
	divsd	.LCPI0_1(%rip), %xmm0
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	cmpb	$0, 56(%rbx)
	je	.LBB0_9
# %bb.8:
	movb	67(%rbx), %al
	jmp	.LBB0_10
.LBB0_9:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB0_10:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$5, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r14
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_115
# %bb.11:
	cmpb	$0, 56(%rbx)
	je	.LBB0_13
# %bb.12:
	movb	67(%rbx), %al
	jmp	.LBB0_14
.LBB0_13:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB0_14:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	leaq	112(%rsp), %r12
	movq	%r12, 96(%rsp)
	movabsq	$32770348699510116, %rbx # imm = 0x746C7561666564
	movq	%rbx, 112(%rsp)
	movq	$7, 104(%rsp)
.Ltmp0:
	leaq	5096(%rsp), %rdi
	leaq	96(%rsp), %rsi
	callq	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp1:
# %bb.15:
	movq	96(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB0_17
# %bb.16:
	callq	_ZdlPv
.LBB0_17:
	xorpd	%xmm0, %xmm0
	movhpd	.LCPI0_2(%rip), %xmm0   # xmm0 = xmm0[0],mem[0]
	movapd	%xmm0, 48(%rsp)
	leaq	24(%rsp), %r15
	movq	%r15, 8(%rsp)
	movabsq	$7305798977753210733, %rax # imm = 0x6563697665645F6D
	movq	%rax, 29(%rsp)
	movabsq	$7232619851774058866, %rax # imm = 0x645F6D6F646E6172
	movq	%rax, 24(%rsp)
	movq	$13, 16(%rsp)
	movb	$0, 37(%rsp)
	leaq	80(%rsp), %r13
	movq	%r13, 64(%rsp)
	movq	%rbx, 80(%rsp)
	movq	$7, 72(%rsp)
.Ltmp3:
	leaq	96(%rsp), %rdi
	leaq	64(%rsp), %rsi
	callq	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Ltmp4:
# %bb.18:
.Ltmp6:
	leaq	8(%rsp), %rdi
	leaq	96(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	_Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.Ltmp7:
# %bb.19:
.Ltmp12:
	leaq	96(%rsp), %rdi
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp13:
# %bb.20:
	movq	64(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB0_22
# %bb.21:
	callq	_ZdlPv
.LBB0_22:
	movq	8(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB0_24
# %bb.23:
	callq	_ZdlPv
.LBB0_24:
	movq	%r12, 96(%rsp)
	movabsq	$8241416294426896749, %rbx # imm = 0x725F6474736E696D
	movq	%rbx, 112(%rsp)
	movl	$811888225, 120(%rsp)   # imm = 0x30646E61
	movq	$12, 104(%rsp)
	movb	$0, 124(%rsp)
.Ltmp15:
	leaq	5096(%rsp), %rdi
	callq	_ZNSt13random_device9_M_getvalEv
.Ltmp16:
# %bb.25:
	movl	%eax, %ecx
	leaq	(%rcx,%rcx,2), %rcx
	shrq	$32, %rcx
	movl	%eax, %edx
	subl	%ecx, %edx
	shrl	%edx
	addl	%ecx, %edx
	shrl	$30, %edx
	movl	%edx, %ecx
	shll	$31, %ecx
	subl	%ecx, %edx
	addl	%eax, %edx
	movl	$1, %eax
	cmovnel	%edx, %eax
	movq	%rax, 8(%rsp)
.Ltmp17:
	leaq	96(%rsp), %rdi
	leaq	8(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	_Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.Ltmp18:
# %bb.26:
	movq	96(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB0_28
# %bb.27:
	callq	_ZdlPv
.LBB0_28:
	movq	%r12, 96(%rsp)
	movq	%rbx, 112(%rsp)
	movl	$6581857, 120(%rsp)     # imm = 0x646E61
	movq	$11, 104(%rsp)
.Ltmp20:
	leaq	5096(%rsp), %rdi
	callq	_ZNSt13random_device9_M_getvalEv
.Ltmp21:
# %bb.29:
	movl	%eax, %ecx
	leaq	(%rcx,%rcx,2), %rcx
	shrq	$32, %rcx
	movl	%eax, %edx
	subl	%ecx, %edx
	shrl	%edx
	addl	%ecx, %edx
	shrl	$30, %edx
	movl	%edx, %ecx
	shll	$31, %ecx
	subl	%ecx, %edx
	addl	%eax, %edx
	movl	$1, %eax
	cmovnel	%edx, %eax
	movq	%rax, 8(%rsp)
.Ltmp22:
	leaq	96(%rsp), %rdi
	leaq	8(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	_Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.Ltmp23:
# %bb.30:
	movq	96(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB0_32
# %bb.31:
	callq	_ZdlPv
.LBB0_32:
	movq	%r15, 8(%rsp)
	movabsq	$15537444584780909, %rax # imm = 0x3733393931746D
	movq	%rax, 24(%rsp)
	movq	$7, 16(%rsp)
.Ltmp25:
	leaq	5096(%rsp), %rdi
	callq	_ZNSt13random_device9_M_getvalEv
.Ltmp26:
# %bb.33:
	movl	%eax, %esi
	movq	%rsi, 96(%rsp)
	movl	$1, %r8d
	movl	$16, %edi
	movl	$2, %ebx
	xorl	%r9d, %r9d
	movabsq	$945986875574848801, %r14 # imm = 0xD20D20D20D20D21
	jmp	.LBB0_34
	.p2align	4, 0x90
.LBB0_114:                              #   in Loop: Header=BB0_34 Depth=1
	shrq	%rcx
	imulq	$624, %rcx, %rcx        # imm = 0x270
	movq	%rbx, %rsi
	subq	%rcx, %rsi
	movq	%rax, %rcx
	shrq	$30, %rcx
	xorl	%eax, %ecx
	imull	$1812433253, %ecx, %eax # imm = 0x6C078965
	addl	%eax, %esi
	movq	%rsi, 96(%rsp,%rdi)
	addq	$2, %r8
	addq	$16, %rdi
	addq	$2, %rbx
	addq	$2, %r9
.LBB0_34:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rax
	shrq	$4, %rax
	mulq	%r14
	movq	%rdx, %rcx
	movq	%r9, %rax
	shrq	$4, %rax
	mulq	%r14
	shrq	%rdx
	imull	$624, %edx, %eax        # imm = 0x270
	movl	%r8d, %edx
	subl	%eax, %edx
	movq	%rsi, %rax
	shrq	$30, %rax
	xorl	%esi, %eax
	imull	$1812433253, %eax, %eax # imm = 0x6C078965
	addl	%edx, %eax
	movq	%rax, 88(%rsp,%rdi)
	cmpq	$4992, %rdi             # imm = 0x1380
	jne	.LBB0_114
# %bb.35:
	movq	$624, 5088(%rsp)        # imm = 0x270
.Ltmp27:
	leaq	8(%rsp), %rdi
	leaq	96(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	_Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.Ltmp28:
# %bb.36:
	movq	8(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB0_38
# %bb.37:
	callq	_ZdlPv
.LBB0_38:
	movq	%r15, 8(%rsp)
	movabsq	$6861008878187934829, %rax # imm = 0x5F3733393931746D
	movq	%rax, 24(%rsp)
	movw	$13366, 32(%rsp)        # imm = 0x3436
	movq	$10, 16(%rsp)
	movb	$0, 34(%rsp)
.Ltmp30:
	leaq	5096(%rsp), %rdi
	callq	_ZNSt13random_device9_M_getvalEv
.Ltmp31:
# %bb.39:
	movabsq	$6364136223846793005, %r8 # imm = 0x5851F42D4C957F2D
	movl	%eax, %edi
	movq	%rdi, 96(%rsp)
	movl	$1, %r10d
	movl	$16, %esi
	movl	$2, %r11d
	xorl	%r9d, %r9d
	jmp	.LBB0_40
	.p2align	4, 0x90
.LBB0_113:                              #   in Loop: Header=BB0_40 Depth=1
	shrq	%rcx
	imulq	$312, %rcx, %rcx        # imm = 0x138
	movq	%r11, %rdx
	subq	%rcx, %rdx
	leaq	1(%r10), %rcx
	movq	%rax, %rbx
	shrq	$62, %rbx
	xorq	%rax, %rbx
	imulq	%r8, %rbx
	movzwl	%cx, %eax
	shrl	$3, %eax
	imull	$3361, %eax, %eax       # imm = 0xD21
	shrl	$17, %eax
	imull	$312, %eax, %eax        # imm = 0x138
	subl	%eax, %ecx
	movzwl	%cx, %edi
	addq	%rbx, %rdi
	addq	%rdx, %rbx
	movq	%rbx, 96(%rsp,%rsi)
	addq	$2, %r10
	addq	$16, %rsi
	addq	$2, %r11
	addq	$2, %r9
.LBB0_40:                               # =>This Inner Loop Header: Depth=1
	movq	%r11, %rax
	shrq	$3, %rax
	mulq	%r14
	movq	%rdx, %rcx
	movq	%r9, %rax
	shrq	$3, %rax
	mulq	%r14
	shrq	%rdx
	imulq	$312, %rdx, %rax        # imm = 0x138
	movq	%r10, %rdx
	subq	%rax, %rdx
	movq	%rdi, %rax
	shrq	$62, %rax
	xorq	%rdi, %rax
	imulq	%r8, %rax
	addq	%rdx, %rax
	movq	%rax, 88(%rsp,%rsi)
	cmpq	$2496, %rsi             # imm = 0x9C0
	jne	.LBB0_113
# %bb.41:
	movq	$312, 2592(%rsp)        # imm = 0x138
.Ltmp32:
	leaq	8(%rsp), %rdi
	leaq	96(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	_Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.Ltmp33:
# %bb.42:
	movq	8(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB0_44
# %bb.43:
	callq	_ZdlPv
.LBB0_44:
	movq	%r15, 8(%rsp)
	movabsq	$7310293695284392568, %rax # imm = 0x657361625F343278
	movq	%rax, 29(%rsp)
	movabsq	$3761201084533465458, %rax # imm = 0x343278756C6E6172
	movq	%rax, 24(%rsp)
	movq	$13, 16(%rsp)
	movb	$0, 37(%rsp)
.Ltmp35:
	leaq	5096(%rsp), %rdi
	callq	_ZNSt13random_device9_M_getvalEv
.Ltmp36:
# %bb.45:
	testl	%eax, %eax
	je	.LBB0_46
# %bb.47:
	movl	%eax, %ecx
	imulq	$171, %rcx, %rcx
	shrq	$32, %rcx
	movl	%eax, %edx
	subl	%ecx, %edx
	shrl	%edx
	addl	%ecx, %edx
	shrl	$30, %edx
	imull	$2147483563, %edx, %ecx # imm = 0x7FFFFFAB
	subl	%ecx, %eax
	jmp	.LBB0_48
.LBB0_46:
	movl	$19780503, %eax         # imm = 0x12DD397
.LBB0_48:
	testl	%eax, %eax
	movl	$1, %ecx
	cmovnel	%eax, %ecx
	movl	$1, %edi
	movabsq	$730144469221, %rbx     # imm = 0xAA000070E5
	.p2align	4, 0x90
.LBB0_49:                               # =>This Inner Loop Header: Depth=1
	imulq	$40014, %rcx, %rsi      # imm = 0x9C4E
	movq	%rsi, %rax
	mulq	%rbx
	movq	%rsi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	imulq	$2147483563, %rax, %rax # imm = 0x7FFFFFAB
	subq	%rax, %rsi
	imulq	$40014, %rsi, %rcx      # imm = 0x9C4E
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	andl	$16777215, %esi         # imm = 0xFFFFFF
	movq	%rsi, 88(%rsp,%rdi,8)
	movq	%rcx, %rax
	mulq	%rbx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	imulq	$2147483563, %rax, %rax # imm = 0x7FFFFFAB
	subq	%rax, %rcx
	movl	%ecx, %eax
	andl	$16777215, %eax         # imm = 0xFFFFFF
	movq	%rax, 96(%rsp,%rdi,8)
	addq	$2, %rdi
	cmpq	$25, %rdi
	jne	.LBB0_49
# %bb.50:
	xorl	%eax, %eax
	cmpq	$0, 280(%rsp)
	sete	%al
	movq	%rax, 288(%rsp)
	movq	$0, 296(%rsp)
.Ltmp37:
	leaq	8(%rsp), %rdi
	leaq	96(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	_Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.Ltmp38:
# %bb.51:
	movq	8(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB0_53
# %bb.52:
	callq	_ZdlPv
.LBB0_53:
	movq	%r15, 8(%rsp)
	movabsq	$7310293695284655224, %rax # imm = 0x657361625F383478
	movq	%rax, 29(%rsp)
	movabsq	$4049994410638598514, %rax # imm = 0x383478756C6E6172
	movq	%rax, 24(%rsp)
	movq	$13, 16(%rsp)
	movb	$0, 37(%rsp)
.Ltmp40:
	leaq	5096(%rsp), %rdi
	callq	_ZNSt13random_device9_M_getvalEv
.Ltmp41:
# %bb.54:
	testl	%eax, %eax
	je	.LBB0_55
# %bb.56:
	movl	%eax, %ecx
	imulq	$171, %rcx, %rcx
	shrq	$32, %rcx
	movl	%eax, %edx
	subl	%ecx, %edx
	shrl	%edx
	addl	%ecx, %edx
	shrl	$30, %edx
	imull	$2147483563, %edx, %ecx # imm = 0x7FFFFFAB
	subl	%ecx, %eax
	jmp	.LBB0_57
.LBB0_55:
	movl	$19780503, %eax         # imm = 0x12DD397
.LBB0_57:
	movabsq	$281470681743360, %r14  # imm = 0xFFFF00000000
	testl	%eax, %eax
	movl	$1, %ecx
	cmovnel	%eax, %ecx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_58:                               # =>This Inner Loop Header: Depth=1
	imulq	$40014, %rcx, %rsi      # imm = 0x9C4E
	movq	%rsi, %rax
	mulq	%rbx
	movq	%rsi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	imulq	$2147483563, %rax, %rax # imm = 0x7FFFFFAB
	subq	%rax, %rsi
	imulq	$40014, %rsi, %rcx      # imm = 0x9C4E
	movq	%rcx, %rax
	mulq	%rbx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	imulq	$2147483563, %rax, %rax # imm = 0x7FFFFFAB
	subq	%rax, %rcx
	movq	%rcx, %rax
	shlq	$32, %rax
	andq	%r14, %rax
	orq	%rsi, %rax
	movq	%rax, 96(%rsp,%rdi,8)
	addq	$1, %rdi
	cmpq	$12, %rdi
	jne	.LBB0_58
# %bb.59:
	xorl	%eax, %eax
	cmpq	$0, 184(%rsp)
	sete	%al
	movq	%rax, 192(%rsp)
	movq	$0, 200(%rsp)
.Ltmp42:
	leaq	8(%rsp), %rdi
	leaq	96(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	_Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.Ltmp43:
# %bb.60:
	movq	8(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB0_62
# %bb.61:
	callq	_ZdlPv
.LBB0_62:
	movq	%r15, 8(%rsp)
	movapd	.LCPI0_3(%rip), %xmm0   # xmm0 = [8,3761201084533465458]
	movupd	%xmm0, 16(%rsp)
	movb	$0, 32(%rsp)
.Ltmp45:
	leaq	5096(%rsp), %rdi
	callq	_ZNSt13random_device9_M_getvalEv
.Ltmp46:
# %bb.63:
	testl	%eax, %eax
	je	.LBB0_64
# %bb.65:
	movl	%eax, %ecx
	imulq	$171, %rcx, %rcx
	shrq	$32, %rcx
	movl	%eax, %edx
	subl	%ecx, %edx
	shrl	%edx
	addl	%ecx, %edx
	shrl	$30, %edx
	imull	$2147483563, %edx, %ecx # imm = 0x7FFFFFAB
	subl	%ecx, %eax
	jmp	.LBB0_66
.LBB0_64:
	movl	$19780503, %eax         # imm = 0x12DD397
.LBB0_66:
	testl	%eax, %eax
	movl	$1, %ecx
	cmovnel	%eax, %ecx
	movl	$1, %edi
	.p2align	4, 0x90
.LBB0_67:                               # =>This Inner Loop Header: Depth=1
	imulq	$40014, %rcx, %rsi      # imm = 0x9C4E
	movq	%rsi, %rax
	mulq	%rbx
	movq	%rsi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	imulq	$2147483563, %rax, %rax # imm = 0x7FFFFFAB
	subq	%rax, %rsi
	imulq	$40014, %rsi, %rcx      # imm = 0x9C4E
                                        # kill: def $esi killed $esi killed $rsi def $rsi
	andl	$16777215, %esi         # imm = 0xFFFFFF
	movq	%rsi, 88(%rsp,%rdi,8)
	movq	%rcx, %rax
	mulq	%rbx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	imulq	$2147483563, %rax, %rax # imm = 0x7FFFFFAB
	subq	%rax, %rcx
	movl	%ecx, %eax
	andl	$16777215, %eax         # imm = 0xFFFFFF
	movq	%rax, 96(%rsp,%rdi,8)
	addq	$2, %rdi
	cmpq	$25, %rdi
	jne	.LBB0_67
# %bb.68:
	xorl	%eax, %eax
	cmpq	$0, 280(%rsp)
	sete	%al
	movq	%rax, 288(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 296(%rsp)
.Ltmp47:
	leaq	8(%rsp), %rdi
	leaq	96(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.Ltmp48:
# %bb.69:
	movq	8(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB0_71
# %bb.70:
	callq	_ZdlPv
.LBB0_71:
	movq	%r15, 8(%rsp)
	movapd	.LCPI0_4(%rip), %xmm0   # xmm0 = [8,4049994410638598514]
	movupd	%xmm0, 16(%rsp)
	movb	$0, 32(%rsp)
.Ltmp50:
	leaq	5096(%rsp), %rdi
	callq	_ZNSt13random_device9_M_getvalEv
.Ltmp51:
# %bb.72:
	testl	%eax, %eax
	je	.LBB0_73
# %bb.74:
	movl	%eax, %ecx
	imulq	$171, %rcx, %rcx
	shrq	$32, %rcx
	movl	%eax, %edx
	subl	%ecx, %edx
	shrl	%edx
	addl	%ecx, %edx
	shrl	$30, %edx
	imull	$2147483563, %edx, %ecx # imm = 0x7FFFFFAB
	subl	%ecx, %eax
	jmp	.LBB0_75
.LBB0_73:
	movl	$19780503, %eax         # imm = 0x12DD397
.LBB0_75:
	testl	%eax, %eax
	movl	$1, %ecx
	cmovnel	%eax, %ecx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_76:                               # =>This Inner Loop Header: Depth=1
	imulq	$40014, %rcx, %rsi      # imm = 0x9C4E
	movq	%rsi, %rax
	mulq	%rbx
	movq	%rsi, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	imulq	$2147483563, %rax, %rax # imm = 0x7FFFFFAB
	subq	%rax, %rsi
	imulq	$40014, %rsi, %rcx      # imm = 0x9C4E
	movq	%rcx, %rax
	mulq	%rbx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	imulq	$2147483563, %rax, %rax # imm = 0x7FFFFFAB
	subq	%rax, %rcx
	movq	%rcx, %rax
	shlq	$32, %rax
	andq	%r14, %rax
	orq	%rsi, %rax
	movq	%rax, 96(%rsp,%rdi,8)
	addq	$1, %rdi
	cmpq	$12, %rdi
	jne	.LBB0_76
# %bb.77:
	xorl	%eax, %eax
	cmpq	$0, 184(%rsp)
	sete	%al
	movq	%rax, 192(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 200(%rsp)
.Ltmp52:
	leaq	8(%rsp), %rdi
	leaq	96(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.Ltmp53:
# %bb.78:
	movq	8(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB0_80
# %bb.79:
	callq	_ZdlPv
.LBB0_80:
	movq	%r15, 8(%rsp)
	movabsq	$27689449952734827, %rax # imm = 0x625F6874756E6B
	movq	%rax, 24(%rsp)
	movq	$7, 16(%rsp)
.Ltmp55:
	leaq	5096(%rsp), %rdi
	callq	_ZNSt13random_device9_M_getvalEv
.Ltmp56:
# %bb.81:
	movl	%eax, %ecx
	leaq	(%rcx,%rcx,2), %rdx
	shrq	$32, %rdx
	movl	%eax, %ecx
	subl	%edx, %ecx
	shrl	%ecx
	addl	%edx, %ecx
	shrl	$30, %ecx
	movl	%ecx, %edx
	shll	$31, %edx
	subl	%edx, %ecx
	addl	%eax, %ecx
	je	.LBB0_82
# %bb.83:
	imulq	$16807, %rcx, %rcx      # imm = 0x41A7
	movabsq	$8589934597, %rdx       # imm = 0x200000005
	movq	%rcx, %rax
	mulq	%rdx
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	movq	%rax, %rdx
	shlq	$31, %rdx
	subq	%rdx, %rax
	addq	%rcx, %rax
	jmp	.LBB0_84
.LBB0_82:
	movl	$16807, %eax            # imm = 0x41A7
.LBB0_84:
	movq	%rax, 96(%rsp)
	movl	$2, %esi
	movabsq	$8589934597, %rdi       # imm = 0x200000005
	.p2align	4, 0x90
.LBB0_85:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, 88(%rsp,%rsi,8)
	imulq	$16807, %rax, %rcx      # imm = 0x41A7
	movq	%rcx, %rax
	mulq	%rdi
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	movq	%rax, %rdx
	shlq	$31, %rdx
	subq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rax, 96(%rsp,%rsi,8)
	imulq	$16807, %rax, %rcx      # imm = 0x41A7
	movq	%rcx, %rax
	mulq	%rdi
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	movq	%rax, %rdx
	shlq	$31, %rdx
	subq	%rdx, %rax
	addq	%rcx, %rax
	addq	$2, %rsi
	cmpq	$258, %rsi              # imm = 0x102
	jne	.LBB0_85
# %bb.86:
	movq	%rax, 96(%rsp)
	movq	%rax, 2152(%rsp)
.Ltmp57:
	leaq	8(%rsp), %rdi
	leaq	96(%rsp), %rsi
	leaq	48(%rsp), %rdx
	callq	_Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.Ltmp58:
# %bb.87:
	movq	8(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB0_89
# %bb.88:
	callq	_ZdlPv
.LBB0_89:
.Ltmp63:
	leaq	5096(%rsp), %rdi
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp64:
# %bb.90:
	xorl	%eax, %eax
	addq	$10096, %rsp            # imm = 0x2770
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB0_115:
	.cfi_def_cfa_offset 10144
	callq	_ZSt16__throw_bad_castv
.LBB0_117:
.Ltmp65:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_116:
.Ltmp14:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_93:
.Ltmp8:
	movq	%rax, %r14
.Ltmp9:
	leaq	96(%rsp), %rdi
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp10:
	jmp	.LBB0_96
.LBB0_94:
.Ltmp11:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_95:
.Ltmp5:
	movq	%rax, %r14
.LBB0_96:
	movq	64(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB0_109
# %bb.97:
	callq	_ZdlPv
	jmp	.LBB0_109
.LBB0_91:
.Ltmp2:
	movq	%rax, %r14
	movq	96(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB0_112
# %bb.92:
	callq	_ZdlPv
	movq	%r14, %rdi
	callq	_Unwind_Resume
.LBB0_107:
.Ltmp59:
	jmp	.LBB0_108
.LBB0_106:
.Ltmp54:
	jmp	.LBB0_108
.LBB0_105:
.Ltmp49:
	jmp	.LBB0_108
.LBB0_104:
.Ltmp44:
	jmp	.LBB0_108
.LBB0_103:
.Ltmp39:
	jmp	.LBB0_108
.LBB0_102:
.Ltmp34:
	jmp	.LBB0_108
.LBB0_101:
.Ltmp29:
.LBB0_108:
	movq	%rax, %r14
.LBB0_109:
	movq	8(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB0_111
.LBB0_110:
	callq	_ZdlPv
.LBB0_111:
.Ltmp60:
	leaq	5096(%rsp), %rdi
	callq	_ZNSt13random_device7_M_finiEv
.Ltmp61:
.LBB0_112:
	movq	%r14, %rdi
	callq	_Unwind_Resume
.LBB0_118:
.Ltmp62:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_100:
.Ltmp24:
	jmp	.LBB0_99
.LBB0_98:
.Ltmp19:
.LBB0_99:
	movq	%rax, %r14
	movq	96(%rsp), %rdi
	cmpq	%r12, %rdi
	jne	.LBB0_110
	jmp	.LBB0_111
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table0:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                       # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0   #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0   # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0          #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0   #     jumps to .Ltmp2
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0   # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3          #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0   #     jumps to .Ltmp5
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0   # >> Call Site 4 <<
	.uleb128 .Ltmp7-.Ltmp6          #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0   #     jumps to .Ltmp8
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0  # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp12        #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0  #     jumps to .Ltmp14
	.byte	1                       #   On action: 1
	.uleb128 .Ltmp15-.Lfunc_begin0  # >> Call Site 6 <<
	.uleb128 .Ltmp18-.Ltmp15        #   Call between .Ltmp15 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0  #     jumps to .Ltmp19
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0  # >> Call Site 7 <<
	.uleb128 .Ltmp23-.Ltmp20        #   Call between .Ltmp20 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0  #     jumps to .Ltmp24
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0  # >> Call Site 8 <<
	.uleb128 .Ltmp28-.Ltmp25        #   Call between .Ltmp25 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0  #     jumps to .Ltmp29
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0  # >> Call Site 9 <<
	.uleb128 .Ltmp33-.Ltmp30        #   Call between .Ltmp30 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin0  #     jumps to .Ltmp34
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin0  # >> Call Site 10 <<
	.uleb128 .Ltmp38-.Ltmp35        #   Call between .Ltmp35 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0  #     jumps to .Ltmp39
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0  # >> Call Site 11 <<
	.uleb128 .Ltmp43-.Ltmp40        #   Call between .Ltmp40 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0  #     jumps to .Ltmp44
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0  # >> Call Site 12 <<
	.uleb128 .Ltmp48-.Ltmp45        #   Call between .Ltmp45 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin0  #     jumps to .Ltmp49
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0  # >> Call Site 13 <<
	.uleb128 .Ltmp53-.Ltmp50        #   Call between .Ltmp50 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin0  #     jumps to .Ltmp54
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin0  # >> Call Site 14 <<
	.uleb128 .Ltmp58-.Ltmp55        #   Call between .Ltmp55 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin0  #     jumps to .Ltmp59
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin0  # >> Call Site 15 <<
	.uleb128 .Ltmp64-.Ltmp63        #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin0  #     jumps to .Ltmp65
	.byte	1                       #   On action: 1
	.uleb128 .Ltmp64-.Lfunc_begin0  # >> Call Site 16 <<
	.uleb128 .Ltmp9-.Ltmp64         #   Call between .Ltmp64 and .Ltmp9
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0   # >> Call Site 17 <<
	.uleb128 .Ltmp10-.Ltmp9         #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0  #     jumps to .Ltmp11
	.byte	1                       #   On action: 1
	.uleb128 .Ltmp10-.Lfunc_begin0  # >> Call Site 18 <<
	.uleb128 .Ltmp60-.Ltmp10        #   Call between .Ltmp10 and .Ltmp60
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin0  # >> Call Site 19 <<
	.uleb128 .Ltmp61-.Ltmp60        #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin0  #     jumps to .Ltmp62
	.byte	1                       #   On action: 1
	.uleb128 .Ltmp61-.Lfunc_begin0  # >> Call Site 20 <<
	.uleb128 .Lfunc_end0-.Ltmp61    #   Call between .Ltmp61 and .Lfunc_end0
	.byte	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
.Lcst_end0:
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LCPI1_0:
	.quad	4741671816366391296     # double 1.0E+9
	.section	.text._Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.weak	_Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.p2align	4, 0x90
	.type	_Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,@function
_Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_: # @_Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	$1000000, %ebp          # imm = 0xF4240
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	addl	$-1, %ebp
	jne	.LBB1_1
# %bb.2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r15
	movq	(%r12), %rsi
	movq	8(%r12), %rdx
	movl	$_ZSt4cout, %edi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB1_15
# %bb.3:
	cmpb	$0, 56(%rbx)
	je	.LBB1_5
# %bb.4:
	movb	67(%rbx), %al
	jmp	.LBB1_6
.LBB1_5:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB1_6:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$4, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB1_15
# %bb.7:
	subq	%r14, %r15
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%r15, %xmm0
	divsd	.LCPI1_0(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	cmpb	$0, 56(%rbx)
	je	.LBB1_9
# %bb.8:
	movb	67(%rbx), %al
	jmp	.LBB1_10
.LBB1_9:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB1_10:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$5, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r14
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB1_15
# %bb.11:
	cmpb	$0, 56(%rbx)
	je	.LBB1_13
# %bb.12:
	movb	67(%rbx), %al
	jmp	.LBB1_14
.LBB1_13:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB1_14:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv           # TAILCALL
.LBB1_15:
	.cfi_def_cfa_offset 64
	callq	_ZSt16__throw_bad_castv
.Lfunc_end1:
	.size	_Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .Lfunc_end1-_Z9benchmarkISt13random_deviceRSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LCPI2_0:
	.quad	4746794007240114176     # double 2147483646
.LCPI2_3:
	.quad	4607182418800017408     # double 1
.LCPI2_6:
	.quad	4741671816366391296     # double 1.0E+9
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI2_1:
	.long	1073741824              # float 2
.LCPI2_2:
	.long	1593835520              # float 9.22337203E+18
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI2_4:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI2_5:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.text._Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.weak	_Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.p2align	4, 0x90
	.type	_Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,@function
_Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_: # @_Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 56(%rsp)          # 8-byte Spill
	fldl	.LCPI2_0(%rip)
	flds	.LCPI2_1(%rip)
	fstpt	128(%rsp)               # 10-byte Folded Spill
	flds	.LCPI2_2(%rip)
	fstpt	116(%rsp)               # 10-byte Folded Spill
	movabsq	$-9223372036854775808, %r15 # imm = 0x8000000000000000
	movabsq	$8589934597, %r14       # imm = 0x200000005
	fld	%st(0)
	fstpt	36(%rsp)                # 10-byte Folded Spill
	jmp	.LBB2_1
.LBB2_25:                               #   in Loop: Header=BB2_1 Depth=1
	fstp	%st(0)
	xorpd	%xmm1, %xmm1
	movapd	%xmm4, %xmm0
	callq	nextafter
	fldt	36(%rsp)                # 10-byte Folded Reload
	jmp	.LBB2_26
	.p2align	4, 0x90
.LBB2_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_28 Depth 2
	fstpt	(%rsp)
	callq	logl
	fstpt	140(%rsp)               # 10-byte Folded Spill
	fldt	128(%rsp)               # 10-byte Folded Reload
	fstpt	(%rsp)
	callq	logl
	fnstcw	22(%rsp)
	fldt	140(%rsp)               # 10-byte Folded Reload
	fdivp	%st(1)
	movzwl	22(%rsp), %eax
	movw	$3199, 22(%rsp)         # imm = 0xC7F
	fldcw	22(%rsp)
	fldt	116(%rsp)               # 10-byte Folded Reload
	fld	%st(1)
	fsub	%st(1)
	movw	%ax, 22(%rsp)
	fistpll	104(%rsp)
	fldcw	22(%rsp)
	fnstcw	20(%rsp)
	movzwl	20(%rsp), %eax
	movw	$3199, 20(%rsp)         # imm = 0xC7F
	fldcw	20(%rsp)
	movw	%ax, 20(%rsp)
	fld	%st(1)
	fistpll	96(%rsp)
	fldcw	20(%rsp)
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jae	.LBB2_2
# %bb.16:                               #   in Loop: Header=BB2_1 Depth=1
	movq	96(%rsp), %rcx
	jmp	.LBB2_17
	.p2align	4, 0x90
.LBB2_2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	104(%rsp), %rcx
	xorq	%r15, %rcx
.LBB2_17:                               #   in Loop: Header=BB2_1 Depth=1
	leaq	52(%rcx), %rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	$1, %rax
	movl	$1, %edi
	cmovaq	%rax, %rdi
	testq	%rdi, %rdi
	fldt	36(%rsp)                # 10-byte Folded Reload
	movsd	.LCPI2_3(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI2_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movdqa	.LCPI2_4(%rip), %xmm5   # xmm5 = [1127219200,1160773632,0,0]
	movapd	.LCPI2_5(%rip), %xmm6   # xmm6 = [4.503600e+15,1.934281e+25]
	je	.LBB2_18
# %bb.19:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rax, %rcx
	movq	(%r12), %rax
	xorpd	%xmm0, %xmm0
	testb	$1, %dil
	jne	.LBB2_21
# %bb.20:                               #   in Loop: Header=BB2_1 Depth=1
	movapd	%xmm4, %xmm1
	cmpq	$2, %rcx
	jae	.LBB2_28
	jmp	.LBB2_23
	.p2align	4, 0x90
.LBB2_18:                               #   in Loop: Header=BB2_1 Depth=1
	xorpd	%xmm0, %xmm0
	movapd	%xmm4, %xmm2
	jmp	.LBB2_24
	.p2align	4, 0x90
.LBB2_21:                               #   in Loop: Header=BB2_1 Depth=1
	imulq	$16807, %rax, %rbp      # imm = 0x41A7
	movq	%rbp, %rax
	mulq	%r14
	movq	%rbp, %rsi
	subq	%rdx, %rsi
	shrq	%rsi
	addq	%rdx, %rsi
	shrq	$30, %rsi
	movq	%rsi, %rax
	shlq	$31, %rax
	subq	%rax, %rsi
	leaq	(%rsi,%rbp), %rax
	leaq	(%rsi,%rbp), %rdx
	addq	$-1, %rdx
	movq	%rdx, %xmm1
	punpckldq	%xmm5, %xmm1    # xmm1 = xmm1[0],xmm5[0],xmm1[1],xmm5[1]
	subpd	.LCPI2_5(%rip), %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	addq	$-1, %rdi
	movapd	%xmm2, %xmm1
	cmpq	$2, %rcx
	jb	.LBB2_23
	.p2align	4, 0x90
.LBB2_28:                               #   Parent Loop BB2_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	imulq	$16807, %rax, %rcx      # imm = 0x41A7
	movq	%rcx, %rax
	mulq	%r14
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	movq	%rax, %rdx
	shlq	$31, %rdx
	subq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	addq	%rcx, %rax
	addq	$-1, %rax
	movq	%rax, %xmm3
	punpckldq	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	subpd	%xmm6, %xmm3
	pshufd	$78, %xmm3, %xmm2       # xmm2 = xmm3[2,3,0,1]
	addpd	%xmm3, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm1, 88(%rsp)
	fld	%st(0)
	fmull	88(%rsp)
	fstpl	80(%rsp)
	movsd	80(%rsp), %xmm1         # xmm1 = mem[0],zero
	imulq	$16807, %rdx, %rcx      # imm = 0x41A7
	movq	%rcx, %rax
	mulq	%r14
	movq	%rcx, %rsi
	subq	%rdx, %rsi
	shrq	%rsi
	addq	%rdx, %rsi
	shrq	$30, %rsi
	movq	%rsi, %rax
	shlq	$31, %rax
	subq	%rax, %rsi
	leaq	(%rcx,%rsi), %rax
	addq	%rsi, %rcx
	addq	$-1, %rcx
	movq	%rcx, %xmm3
	punpckldq	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	subpd	%xmm6, %xmm3
	pshufd	$78, %xmm3, %xmm0       # xmm0 = xmm3[2,3,0,1]
	addpd	%xmm3, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm1, 72(%rsp)
	fld	%st(0)
	fmull	72(%rsp)
	addsd	%xmm2, %xmm0
	fstpl	64(%rsp)
	movsd	64(%rsp), %xmm2         # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm1
	addq	$-2, %rdi
	jne	.LBB2_28
.LBB2_23:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rax, (%r12)
.LBB2_24:                               #   in Loop: Header=BB2_1 Depth=1
	divsd	%xmm2, %xmm0
	ucomisd	%xmm4, %xmm0
	jae	.LBB2_25
.LBB2_26:                               #   in Loop: Header=BB2_1 Depth=1
	movsd	(%r13), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%r13), %xmm2          # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	addl	$1, %ebx
	cmpl	$1000000, %ebx          # imm = 0xF4240
	jne	.LBB2_1
# %bb.3:
	fstp	%st(0)
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r12
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	movl	$_ZSt4cout, %edi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r15
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB2_27
# %bb.4:
	cmpb	$0, 56(%rbx)
	je	.LBB2_6
# %bb.5:
	movb	67(%rbx), %al
	jmp	.LBB2_7
.LBB2_6:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB2_7:
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$4, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r15
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB2_27
# %bb.8:
	subq	56(%rsp), %r12          # 8-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%r12, %xmm0
	divsd	.LCPI2_6(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	cmpb	$0, 56(%rbx)
	je	.LBB2_10
# %bb.9:
	movb	67(%rbx), %al
	jmp	.LBB2_11
.LBB2_10:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB2_11:
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$5, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r14
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB2_27
# %bb.12:
	cmpb	$0, 56(%rbx)
	je	.LBB2_14
# %bb.13:
	movb	67(%rbx), %al
	jmp	.LBB2_15
.LBB2_14:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB2_15:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	addq	$152, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv           # TAILCALL
.LBB2_27:
	.cfi_def_cfa_offset 208
	callq	_ZSt16__throw_bad_castv
.Lfunc_end2:
	.size	_Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .Lfunc_end2-_Z9benchmarkISt26linear_congruential_engineImLm16807ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LCPI3_0:
	.quad	4746794007240114176     # double 2147483646
.LCPI3_3:
	.quad	4607182418800017408     # double 1
.LCPI3_6:
	.quad	4741671816366391296     # double 1.0E+9
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI3_1:
	.long	1073741824              # float 2
.LCPI3_2:
	.long	1593835520              # float 9.22337203E+18
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI3_4:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI3_5:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.text._Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.weak	_Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.p2align	4, 0x90
	.type	_Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,@function
_Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_: # @_Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	xorl	%ebx, %ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, 56(%rsp)          # 8-byte Spill
	fldl	.LCPI3_0(%rip)
	flds	.LCPI3_1(%rip)
	fstpt	128(%rsp)               # 10-byte Folded Spill
	flds	.LCPI3_2(%rip)
	fstpt	116(%rsp)               # 10-byte Folded Spill
	movabsq	$-9223372036854775808, %r15 # imm = 0x8000000000000000
	movabsq	$8589934597, %r14       # imm = 0x200000005
	fld	%st(0)
	fstpt	36(%rsp)                # 10-byte Folded Spill
	jmp	.LBB3_1
.LBB3_25:                               #   in Loop: Header=BB3_1 Depth=1
	fstp	%st(0)
	xorpd	%xmm1, %xmm1
	movapd	%xmm4, %xmm0
	callq	nextafter
	fldt	36(%rsp)                # 10-byte Folded Reload
	jmp	.LBB3_26
	.p2align	4, 0x90
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_28 Depth 2
	fstpt	(%rsp)
	callq	logl
	fstpt	140(%rsp)               # 10-byte Folded Spill
	fldt	128(%rsp)               # 10-byte Folded Reload
	fstpt	(%rsp)
	callq	logl
	fnstcw	22(%rsp)
	fldt	140(%rsp)               # 10-byte Folded Reload
	fdivp	%st(1)
	movzwl	22(%rsp), %eax
	movw	$3199, 22(%rsp)         # imm = 0xC7F
	fldcw	22(%rsp)
	fldt	116(%rsp)               # 10-byte Folded Reload
	fld	%st(1)
	fsub	%st(1)
	movw	%ax, 22(%rsp)
	fistpll	104(%rsp)
	fldcw	22(%rsp)
	fnstcw	20(%rsp)
	movzwl	20(%rsp), %eax
	movw	$3199, 20(%rsp)         # imm = 0xC7F
	fldcw	20(%rsp)
	movw	%ax, 20(%rsp)
	fld	%st(1)
	fistpll	96(%rsp)
	fldcw	20(%rsp)
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jae	.LBB3_2
# %bb.16:                               #   in Loop: Header=BB3_1 Depth=1
	movq	96(%rsp), %rcx
	jmp	.LBB3_17
	.p2align	4, 0x90
.LBB3_2:                                #   in Loop: Header=BB3_1 Depth=1
	movq	104(%rsp), %rcx
	xorq	%r15, %rcx
.LBB3_17:                               #   in Loop: Header=BB3_1 Depth=1
	leaq	52(%rcx), %rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	$1, %rax
	movl	$1, %edi
	cmovaq	%rax, %rdi
	testq	%rdi, %rdi
	fldt	36(%rsp)                # 10-byte Folded Reload
	movsd	.LCPI3_3(%rip), %xmm4   # xmm4 = mem[0],zero
	movsd	.LCPI3_0(%rip), %xmm2   # xmm2 = mem[0],zero
	movdqa	.LCPI3_4(%rip), %xmm5   # xmm5 = [1127219200,1160773632,0,0]
	movapd	.LCPI3_5(%rip), %xmm6   # xmm6 = [4.503600e+15,1.934281e+25]
	je	.LBB3_18
# %bb.19:                               #   in Loop: Header=BB3_1 Depth=1
	movq	%rax, %rcx
	movq	(%r12), %rax
	xorpd	%xmm0, %xmm0
	testb	$1, %dil
	jne	.LBB3_21
# %bb.20:                               #   in Loop: Header=BB3_1 Depth=1
	movapd	%xmm4, %xmm1
	cmpq	$2, %rcx
	jae	.LBB3_28
	jmp	.LBB3_23
	.p2align	4, 0x90
.LBB3_18:                               #   in Loop: Header=BB3_1 Depth=1
	xorpd	%xmm0, %xmm0
	movapd	%xmm4, %xmm2
	jmp	.LBB3_24
	.p2align	4, 0x90
.LBB3_21:                               #   in Loop: Header=BB3_1 Depth=1
	imulq	$48271, %rax, %rbp      # imm = 0xBC8F
	movq	%rbp, %rax
	mulq	%r14
	movq	%rbp, %rsi
	subq	%rdx, %rsi
	shrq	%rsi
	addq	%rdx, %rsi
	shrq	$30, %rsi
	movq	%rsi, %rax
	shlq	$31, %rax
	subq	%rax, %rsi
	leaq	(%rsi,%rbp), %rax
	leaq	(%rsi,%rbp), %rdx
	addq	$-1, %rdx
	movq	%rdx, %xmm1
	punpckldq	%xmm5, %xmm1    # xmm1 = xmm1[0],xmm5[0],xmm1[1],xmm5[1]
	subpd	.LCPI3_5(%rip), %xmm1
	pshufd	$78, %xmm1, %xmm0       # xmm0 = xmm1[2,3,0,1]
	addpd	%xmm1, %xmm0
	addq	$-1, %rdi
	movapd	%xmm2, %xmm1
	cmpq	$2, %rcx
	jb	.LBB3_23
	.p2align	4, 0x90
.LBB3_28:                               #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	imulq	$48271, %rax, %rcx      # imm = 0xBC8F
	movq	%rcx, %rax
	mulq	%r14
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	movq	%rax, %rdx
	shlq	$31, %rdx
	subq	%rdx, %rax
	leaq	(%rcx,%rax), %rdx
	addq	%rcx, %rax
	addq	$-1, %rax
	movq	%rax, %xmm3
	punpckldq	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	subpd	%xmm6, %xmm3
	pshufd	$78, %xmm3, %xmm2       # xmm2 = xmm3[2,3,0,1]
	addpd	%xmm3, %xmm2
	mulsd	%xmm1, %xmm2
	addsd	%xmm0, %xmm2
	movsd	%xmm1, 88(%rsp)
	fld	%st(0)
	fmull	88(%rsp)
	fstpl	80(%rsp)
	movsd	80(%rsp), %xmm1         # xmm1 = mem[0],zero
	imulq	$48271, %rdx, %rcx      # imm = 0xBC8F
	movq	%rcx, %rax
	mulq	%r14
	movq	%rcx, %rsi
	subq	%rdx, %rsi
	shrq	%rsi
	addq	%rdx, %rsi
	shrq	$30, %rsi
	movq	%rsi, %rax
	shlq	$31, %rax
	subq	%rax, %rsi
	leaq	(%rcx,%rsi), %rax
	addq	%rsi, %rcx
	addq	$-1, %rcx
	movq	%rcx, %xmm3
	punpckldq	%xmm5, %xmm3    # xmm3 = xmm3[0],xmm5[0],xmm3[1],xmm5[1]
	subpd	%xmm6, %xmm3
	pshufd	$78, %xmm3, %xmm0       # xmm0 = xmm3[2,3,0,1]
	addpd	%xmm3, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm1, 72(%rsp)
	fld	%st(0)
	fmull	72(%rsp)
	addsd	%xmm2, %xmm0
	fstpl	64(%rsp)
	movsd	64(%rsp), %xmm2         # xmm2 = mem[0],zero
	movapd	%xmm2, %xmm1
	addq	$-2, %rdi
	jne	.LBB3_28
.LBB3_23:                               #   in Loop: Header=BB3_1 Depth=1
	movq	%rax, (%r12)
.LBB3_24:                               #   in Loop: Header=BB3_1 Depth=1
	divsd	%xmm2, %xmm0
	ucomisd	%xmm4, %xmm0
	jae	.LBB3_25
.LBB3_26:                               #   in Loop: Header=BB3_1 Depth=1
	movsd	(%r13), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%r13), %xmm2          # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	addl	$1, %ebx
	cmpl	$1000000, %ebx          # imm = 0xF4240
	jne	.LBB3_1
# %bb.3:
	fstp	%st(0)
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r12
	movq	48(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	movl	$_ZSt4cout, %edi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r15
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB3_27
# %bb.4:
	cmpb	$0, 56(%rbx)
	je	.LBB3_6
# %bb.5:
	movb	67(%rbx), %al
	jmp	.LBB3_7
.LBB3_6:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB3_7:
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$4, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r15
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB3_27
# %bb.8:
	subq	56(%rsp), %r12          # 8-byte Folded Reload
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%r12, %xmm0
	divsd	.LCPI3_6(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)         # 8-byte Spill
	cmpb	$0, 56(%rbx)
	je	.LBB3_10
# %bb.9:
	movb	67(%rbx), %al
	jmp	.LBB3_11
.LBB3_10:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB3_11:
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$5, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	24(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r14
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB3_27
# %bb.12:
	cmpb	$0, 56(%rbx)
	je	.LBB3_14
# %bb.13:
	movb	67(%rbx), %al
	jmp	.LBB3_15
.LBB3_14:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB3_15:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	addq	$152, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv           # TAILCALL
.LBB3_27:
	.cfi_def_cfa_offset 208
	callq	_ZSt16__throw_bad_castv
.Lfunc_end3:
	.size	_Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .Lfunc_end3-_Z9benchmarkISt26linear_congruential_engineImLm48271ELm0ELm2147483647EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LCPI4_0:
	.quad	4741671816366391296     # double 1.0E+9
	.section	.text._Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.weak	_Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.p2align	4, 0x90
	.type	_Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,@function
_Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_: # @_Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	$1000000, %ebp          # imm = 0xF4240
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%rbx), %xmm2          # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	addl	$-1, %ebp
	jne	.LBB4_1
# %bb.2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r15
	movq	(%r12), %rsi
	movq	8(%r12), %rdx
	movl	$_ZSt4cout, %edi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_15
# %bb.3:
	cmpb	$0, 56(%rbx)
	je	.LBB4_5
# %bb.4:
	movb	67(%rbx), %al
	jmp	.LBB4_6
.LBB4_5:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB4_6:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$4, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_15
# %bb.7:
	subq	%r14, %r15
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%r15, %xmm0
	divsd	.LCPI4_0(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	cmpb	$0, 56(%rbx)
	je	.LBB4_9
# %bb.8:
	movb	67(%rbx), %al
	jmp	.LBB4_10
.LBB4_9:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB4_10:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$5, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r14
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB4_15
# %bb.11:
	cmpb	$0, 56(%rbx)
	je	.LBB4_13
# %bb.12:
	movb	67(%rbx), %al
	jmp	.LBB4_14
.LBB4_13:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB4_14:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv           # TAILCALL
.LBB4_15:
	.cfi_def_cfa_offset 64
	callq	_ZSt16__throw_bad_castv
.Lfunc_end4:
	.size	_Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .Lfunc_end4-_Z9benchmarkISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LCPI5_0:
	.quad	4741671816366391296     # double 1.0E+9
	.section	.text._Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.weak	_Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.p2align	4, 0x90
	.type	_Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,@function
_Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_: # @_Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	$1000000, %ebp          # imm = 0xF4240
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	.p2align	4, 0x90
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%rbx), %xmm2          # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	addl	$-1, %ebp
	jne	.LBB5_1
# %bb.2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r15
	movq	(%r12), %rsi
	movq	8(%r12), %rdx
	movl	$_ZSt4cout, %edi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_15
# %bb.3:
	cmpb	$0, 56(%rbx)
	je	.LBB5_5
# %bb.4:
	movb	67(%rbx), %al
	jmp	.LBB5_6
.LBB5_5:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB5_6:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$4, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_15
# %bb.7:
	subq	%r14, %r15
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%r15, %xmm0
	divsd	.LCPI5_0(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	cmpb	$0, 56(%rbx)
	je	.LBB5_9
# %bb.8:
	movb	67(%rbx), %al
	jmp	.LBB5_10
.LBB5_9:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB5_10:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$5, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r14
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB5_15
# %bb.11:
	cmpb	$0, 56(%rbx)
	je	.LBB5_13
# %bb.12:
	movb	67(%rbx), %al
	jmp	.LBB5_14
.LBB5_13:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB5_14:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv           # TAILCALL
.LBB5_15:
	.cfi_def_cfa_offset 64
	callq	_ZSt16__throw_bad_castv
.Lfunc_end5:
	.size	_Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .Lfunc_end5-_Z9benchmarkISt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LCPI6_0:
	.quad	4741671816366391296     # double 1.0E+9
	.section	.text._Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.weak	_Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.p2align	4, 0x90
	.type	_Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,@function
_Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_: # @_Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	$1000000, %ebp          # imm = 0xF4240
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	.p2align	4, 0x90
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	_ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm24ELm10ELm24EEET_RT1_
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%rbx), %xmm2          # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	addl	$-1, %ebp
	jne	.LBB6_1
# %bb.2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r15
	movq	(%r12), %rsi
	movq	8(%r12), %rdx
	movl	$_ZSt4cout, %edi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB6_15
# %bb.3:
	cmpb	$0, 56(%rbx)
	je	.LBB6_5
# %bb.4:
	movb	67(%rbx), %al
	jmp	.LBB6_6
.LBB6_5:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB6_6:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$4, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB6_15
# %bb.7:
	subq	%r14, %r15
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%r15, %xmm0
	divsd	.LCPI6_0(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	cmpb	$0, 56(%rbx)
	je	.LBB6_9
# %bb.8:
	movb	67(%rbx), %al
	jmp	.LBB6_10
.LBB6_9:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB6_10:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$5, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r14
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB6_15
# %bb.11:
	cmpb	$0, 56(%rbx)
	je	.LBB6_13
# %bb.12:
	movb	67(%rbx), %al
	jmp	.LBB6_14
.LBB6_13:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB6_14:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv           # TAILCALL
.LBB6_15:
	.cfi_def_cfa_offset 64
	callq	_ZSt16__throw_bad_castv
.Lfunc_end6:
	.size	_Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .Lfunc_end6-_Z9benchmarkISt26subtract_with_carry_engineImLm24ELm10ELm24EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LCPI7_0:
	.quad	4741671816366391296     # double 1.0E+9
	.section	.text._Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.weak	_Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.p2align	4, 0x90
	.type	_Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,@function
_Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_: # @_Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	$1000000, %ebp          # imm = 0xF4240
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	.p2align	4, 0x90
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	_ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm48ELm5ELm12EEET_RT1_
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%rbx), %xmm2          # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	addl	$-1, %ebp
	jne	.LBB7_1
# %bb.2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r15
	movq	(%r12), %rsi
	movq	8(%r12), %rdx
	movl	$_ZSt4cout, %edi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_15
# %bb.3:
	cmpb	$0, 56(%rbx)
	je	.LBB7_5
# %bb.4:
	movb	67(%rbx), %al
	jmp	.LBB7_6
.LBB7_5:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB7_6:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$4, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_15
# %bb.7:
	subq	%r14, %r15
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%r15, %xmm0
	divsd	.LCPI7_0(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	cmpb	$0, 56(%rbx)
	je	.LBB7_9
# %bb.8:
	movb	67(%rbx), %al
	jmp	.LBB7_10
.LBB7_9:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB7_10:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$5, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r14
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB7_15
# %bb.11:
	cmpb	$0, 56(%rbx)
	je	.LBB7_13
# %bb.12:
	movb	67(%rbx), %al
	jmp	.LBB7_14
.LBB7_13:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB7_14:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv           # TAILCALL
.LBB7_15:
	.cfi_def_cfa_offset 64
	callq	_ZSt16__throw_bad_castv
.Lfunc_end7:
	.size	_Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .Lfunc_end7-_Z9benchmarkISt26subtract_with_carry_engineImLm48ELm5ELm12EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LCPI8_0:
	.quad	4741671816366391296     # double 1.0E+9
	.section	.text._Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.weak	_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.p2align	4, 0x90
	.type	_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,@function
_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_: # @_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	$1000000, %ebp          # imm = 0xF4240
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	.p2align	4, 0x90
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	_ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEEEdRT_RKNS0_10param_typeE
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	addl	$-1, %ebp
	jne	.LBB8_1
# %bb.2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r15
	movq	(%r12), %rsi
	movq	8(%r12), %rdx
	movl	$_ZSt4cout, %edi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB8_15
# %bb.3:
	cmpb	$0, 56(%rbx)
	je	.LBB8_5
# %bb.4:
	movb	67(%rbx), %al
	jmp	.LBB8_6
.LBB8_5:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB8_6:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$4, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB8_15
# %bb.7:
	subq	%r14, %r15
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%r15, %xmm0
	divsd	.LCPI8_0(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	cmpb	$0, 56(%rbx)
	je	.LBB8_9
# %bb.8:
	movb	67(%rbx), %al
	jmp	.LBB8_10
.LBB8_9:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB8_10:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$5, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r14
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB8_15
# %bb.11:
	cmpb	$0, 56(%rbx)
	je	.LBB8_13
# %bb.12:
	movb	67(%rbx), %al
	jmp	.LBB8_14
.LBB8_13:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB8_14:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv           # TAILCALL
.LBB8_15:
	.cfi_def_cfa_offset 64
	callq	_ZSt16__throw_bad_castv
.Lfunc_end8:
	.size	_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .Lfunc_end8-_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LCPI9_0:
	.quad	4741671816366391296     # double 1.0E+9
	.section	.text._Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.weak	_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.p2align	4, 0x90
	.type	_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,@function
_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_: # @_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	$1000000, %ebp          # imm = 0xF4240
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	.p2align	4, 0x90
.LBB9_1:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	_ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEEdRT_RKNS0_10param_typeE
	movsd	8(%rsp), %xmm1          # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsp)          # 8-byte Spill
	addl	$-1, %ebp
	jne	.LBB9_1
# %bb.2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r15
	movq	(%r12), %rsi
	movq	8(%r12), %rdx
	movl	$_ZSt4cout, %edi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB9_15
# %bb.3:
	cmpb	$0, 56(%rbx)
	je	.LBB9_5
# %bb.4:
	movb	67(%rbx), %al
	jmp	.LBB9_6
.LBB9_5:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB9_6:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$4, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB9_15
# %bb.7:
	subq	%r14, %r15
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%r15, %xmm0
	divsd	.LCPI9_0(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	cmpb	$0, 56(%rbx)
	je	.LBB9_9
# %bb.8:
	movb	67(%rbx), %al
	jmp	.LBB9_10
.LBB9_9:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB9_10:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$5, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r14
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB9_15
# %bb.11:
	cmpb	$0, 56(%rbx)
	je	.LBB9_13
# %bb.12:
	movb	67(%rbx), %al
	jmp	.LBB9_14
.LBB9_13:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB9_14:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv           # TAILCALL
.LBB9_15:
	.cfi_def_cfa_offset 64
	callq	_ZSt16__throw_bad_castv
.Lfunc_end9:
	.size	_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .Lfunc_end9-_Z9benchmarkISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
.LCPI10_0:
	.quad	4741671816366391296     # double 1.0E+9
	.section	.text._Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,"axG",@progbits,_Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,comdat
	.weak	_Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.p2align	4, 0x90
	.type	_Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_,@function
_Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_: # @_Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r12
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	movl	$1000000, %ebp          # imm = 0xF4240
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	.p2align	4, 0x90
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	_ZSt18generate_canonicalIdLm53ESt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EEET_RT1_
	movsd	(%rbx), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%rbx), %xmm2          # xmm2 = mem[0],zero
	subsd	%xmm1, %xmm2
	mulsd	%xmm0, %xmm2
	addsd	%xmm1, %xmm2
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	addl	$-1, %ebp
	jne	.LBB10_1
# %bb.2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r15
	movq	(%r12), %rsi
	movq	8(%r12), %rdx
	movl	$_ZSt4cout, %edi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB10_15
# %bb.3:
	cmpb	$0, 56(%rbx)
	je	.LBB10_5
# %bb.4:
	movb	67(%rbx), %al
	jmp	.LBB10_6
.LBB10_5:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB10_6:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$4, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB10_15
# %bb.7:
	subq	%r14, %r15
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%r15, %xmm0
	divsd	.LCPI10_0(%rip), %xmm0
	movsd	%xmm0, 8(%rsp)          # 8-byte Spill
	cmpb	$0, 56(%rbx)
	je	.LBB10_9
# %bb.8:
	movb	67(%rbx), %al
	jmp	.LBB10_10
.LBB10_9:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB10_10:
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$5, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movl	$_ZSt4cout, %edi
	movsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r14
	movl	$.L.str.3, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB10_15
# %bb.11:
	cmpb	$0, 56(%rbx)
	je	.LBB10_13
# %bb.12:
	movb	67(%rbx), %al
	jmp	.LBB10_14
.LBB10_13:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB10_14:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv           # TAILCALL
.LBB10_15:
	.cfi_def_cfa_offset 64
	callq	_ZSt16__throw_bad_castv
.Lfunc_end10:
	.size	_Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_, .Lfunc_end10-_Z9benchmarkISt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EERSt25uniform_real_distributionIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEOT_OT0_
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate  # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
.Lfunc_end11:
	.size	__clang_call_terminate, .Lfunc_end11-__clang_call_terminate
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE
.LCPI12_0:
	.long	1333788672              # float 4.2949673E+9
.LCPI12_1:
	.long	1073741824              # float 2
.LCPI12_2:
	.long	1593835520              # float 9.22337203E+18
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI12_3:
	.quad	4607182418800017408     # double 1
	.section	.text._ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE
	.p2align	4, 0x90
	.type	_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE,@function
_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE: # @_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	flds	.LCPI12_0(%rip)
	fstpt	(%rsp)
	callq	logl
	fstpt	24(%rsp)                # 10-byte Folded Spill
	flds	.LCPI12_1(%rip)
	fstpt	(%rsp)
	callq	logl
	fldt	24(%rsp)                # 10-byte Folded Reload
	fdivp	%st(1)
	fnstcw	22(%rsp)
	flds	.LCPI12_2(%rip)
	movzwl	22(%rsp), %eax
	movw	$3199, 22(%rsp)         # imm = 0xC7F
	fldcw	22(%rsp)
	fld	%st(1)
	fsub	%st(1)
	movw	%ax, 22(%rsp)
	fistpll	72(%rsp)
	fldcw	22(%rsp)
	fnstcw	20(%rsp)
	movzwl	20(%rsp), %eax
	movw	$3199, 20(%rsp)         # imm = 0xC7F
	fldcw	20(%rsp)
	movw	%ax, 20(%rsp)
	fld	%st(1)
	fistpll	64(%rsp)
	fldcw	20(%rsp)
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jae	.LBB12_1
# %bb.2:
	movq	64(%rsp), %rcx
	jmp	.LBB12_3
.LBB12_1:
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	72(%rsp), %rcx
.LBB12_3:
	leaq	52(%rcx), %rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	$1, %rax
	movl	$1, %ebx
	cmovaq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB12_4
# %bb.8:
	xorpd	%xmm2, %xmm2
	movsd	.LCPI12_3(%rip), %xmm0  # xmm0 = mem[0],zero
	.p2align	4, 0x90
.LBB12_9:                               # =>This Inner Loop Header: Depth=1
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	movq	%r15, %rdi
	callq	_ZNSt13random_device9_M_getvalEv
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movl	%eax, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	40(%rsp), %xmm1         # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	%xmm1, 56(%rsp)
	fldl	56(%rsp)
	fmuls	.LCPI12_0(%rip)
	addsd	%xmm0, %xmm2
	fstpl	48(%rsp)
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	addq	$-1, %rbx
	jne	.LBB12_9
	jmp	.LBB12_5
.LBB12_4:
	movsd	.LCPI12_3(%rip), %xmm0  # xmm0 = mem[0],zero
	xorpd	%xmm2, %xmm2
.LBB12_5:
	divsd	%xmm0, %xmm2
	ucomisd	.LCPI12_3(%rip), %xmm2
	jae	.LBB12_6
.LBB12_7:
	movsd	(%r14), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%r14), %xmm0          # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	addq	$80, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB12_6:
	.cfi_def_cfa_offset 112
	movsd	.LCPI12_3(%rip), %xmm0  # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	callq	nextafter
	movapd	%xmm0, %xmm2
	jmp	.LBB12_7
.Lfunc_end12:
	.size	_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE, .Lfunc_end12-_ZNSt25uniform_real_distributionIdEclISt13random_deviceEEdRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
.LCPI13_0:
	.long	1333788672              # float 4.2949673E+9
.LCPI13_1:
	.long	1073741824              # float 2
.LCPI13_2:
	.long	1593835520              # float 9.22337203E+18
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI13_3:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI13_4:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI13_5:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.text._ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,comdat
	.weak	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.p2align	4, 0x90
	.type	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_,@function
_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_: # @_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$80, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	flds	.LCPI13_0(%rip)
	fstpt	(%rsp)
	callq	logl
	fstpt	68(%rsp)                # 10-byte Folded Spill
	flds	.LCPI13_1(%rip)
	fstpt	(%rsp)
	callq	logl
	fldt	68(%rsp)                # 10-byte Folded Reload
	fdivp	%st(1)
	fnstcw	30(%rsp)
	flds	.LCPI13_2(%rip)
	movzwl	30(%rsp), %eax
	movw	$3199, 30(%rsp)         # imm = 0xC7F
	fldcw	30(%rsp)
	fld	%st(1)
	fsub	%st(1)
	movw	%ax, 30(%rsp)
	fistpll	56(%rsp)
	fldcw	30(%rsp)
	fnstcw	28(%rsp)
	movzwl	28(%rsp), %eax
	movw	$3199, 28(%rsp)         # imm = 0xC7F
	fldcw	28(%rsp)
	movw	%ax, 28(%rsp)
	fld	%st(1)
	fistpll	48(%rsp)
	fldcw	28(%rsp)
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jae	.LBB13_1
# %bb.2:
	movq	48(%rsp), %rcx
	jmp	.LBB13_3
.LBB13_1:
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	56(%rsp), %rcx
.LBB13_3:
	leaq	52(%rcx), %rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	$1, %rax
	movl	$1, %r9d
	cmovaq	%rax, %r9
	testq	%r9, %r9
	je	.LBB13_4
# %bb.7:
	movq	4992(%rbx), %rsi
	xorpd	%xmm0, %xmm0
	movsd	.LCPI13_3(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	$-2147483648, %r8       # imm = 0x80000000
	movdqa	.LCPI13_4(%rip), %xmm2  # xmm2 = [1127219200,1160773632,0,0]
	movapd	.LCPI13_5(%rip), %xmm3  # xmm3 = [4.503600e+15,1.934281e+25]
	.p2align	4, 0x90
.LBB13_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_10 Depth 2
                                        #     Child Loop BB13_12 Depth 2
	cmpq	$623, %rsi              # imm = 0x26F
	jbe	.LBB13_14
# %bb.9:                                #   in Loop: Header=BB13_8 Depth=1
	movq	(%rbx), %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB13_10:                              #   Parent Loop BB13_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andq	$-2147483648, %rsi      # imm = 0x80000000
	movq	8(%rbx,%rdx,8), %rax
	movl	%eax, %edi
	andl	$2147483646, %edi       # imm = 0x7FFFFFFE
	orq	%rsi, %rdi
	shrq	%rdi
	xorq	3176(%rbx,%rdx,8), %rdi
	movq	%rax, %rsi
                                        # kill: def $eax killed $eax killed $rax
	andl	$1, %eax
	negl	%eax
	movl	$2567483615, %ecx       # imm = 0x9908B0DF
	andl	%eax, %ecx
	xorq	%rdi, %rcx
	movq	%rcx, (%rbx,%rdx,8)
	leaq	1(%rdx), %rdx
	cmpq	$227, %rdx
	jne	.LBB13_10
# %bb.11:                               #   in Loop: Header=BB13_8 Depth=1
	movq	1816(%rbx), %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB13_12:                              #   Parent Loop BB13_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andq	$-2147483648, %rsi      # imm = 0x80000000
	movq	1824(%rbx,%rdx,8), %rax
	movl	%eax, %ecx
	andl	$2147483646, %ecx       # imm = 0x7FFFFFFE
	orq	%rsi, %rcx
	shrq	%rcx
	xorq	(%rbx,%rdx,8), %rcx
	movq	%rax, %rsi
                                        # kill: def $eax killed $eax killed $rax
	andl	$1, %eax
	negl	%eax
	movl	$2567483615, %edi       # imm = 0x9908B0DF
	andl	%eax, %edi
	xorq	%rcx, %rdi
	movq	%rdi, 1816(%rbx,%rdx,8)
	addq	$1, %rdx
	cmpq	$396, %rdx              # imm = 0x18C
	jne	.LBB13_12
# %bb.13:                               #   in Loop: Header=BB13_8 Depth=1
	movq	4984(%rbx), %rax
	andq	%r8, %rax
	movq	(%rbx), %rcx
	movl	%ecx, %edx
	andl	$2147483646, %edx       # imm = 0x7FFFFFFE
	orq	%rax, %rdx
	shrq	%rdx
	xorq	3168(%rbx), %rdx
	andl	$1, %ecx
	negl	%ecx
	movl	$2567483615, %eax       # imm = 0x9908B0DF
	andl	%ecx, %eax
	xorq	%rdx, %rax
	movq	%rax, 4984(%rbx)
	movq	$0, 4992(%rbx)
	xorl	%esi, %esi
.LBB13_14:                              #   in Loop: Header=BB13_8 Depth=1
	leaq	1(%rsi), %rdx
	movq	%rdx, 4992(%rbx)
	movq	(%rbx,%rsi,8), %rax
	movq	%rax, %rcx
	shrq	$11, %rcx
	movl	%ecx, %ecx
	xorq	%rax, %rcx
	movq	%rcx, %rax
	andq	$20601005, %rax         # imm = 0x13A58AD
	shlq	$7, %rax
	xorq	%rcx, %rax
	movq	%rax, %rcx
	andq	$122764, %rcx           # imm = 0x1DF8C
	shlq	$15, %rcx
	xorq	%rax, %rcx
	movq	%rcx, %rax
	shrq	$18, %rax
	xorq	%rcx, %rax
	movq	%rax, %xmm4
	punpckldq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	subpd	%xmm3, %xmm4
	pshufd	$78, %xmm4, %xmm5       # xmm5 = xmm4[2,3,0,1]
	addpd	%xmm4, %xmm5
	mulsd	%xmm1, %xmm5
	movsd	%xmm1, 40(%rsp)
	fldl	40(%rsp)
	fmuls	.LCPI13_0(%rip)
	addsd	%xmm5, %xmm0
	fstpl	32(%rsp)
	movsd	32(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	%rdx, %rsi
	addq	$-1, %r9
	jne	.LBB13_8
	jmp	.LBB13_5
.LBB13_4:
	movsd	.LCPI13_3(%rip), %xmm1  # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
.LBB13_5:
	divsd	%xmm1, %xmm0
	ucomisd	.LCPI13_3(%rip), %xmm0
	jae	.LBB13_6
# %bb.15:
	addq	$80, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB13_6:
	.cfi_def_cfa_offset 96
	movsd	.LCPI13_3(%rip), %xmm0  # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	addq	$80, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	nextafter               # TAILCALL
.Lfunc_end13:
	.size	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_, .Lfunc_end13-_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEET_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_
.LCPI14_0:
	.long	1602224128              # float 1.84467441E+19
.LCPI14_1:
	.long	1073741824              # float 2
.LCPI14_2:
	.long	1593835520              # float 9.22337203E+18
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI14_3:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI14_4:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI14_5:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.text._ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_,comdat
	.weak	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_
	.p2align	4, 0x90
	.type	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_,@function
_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_: # @_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$80, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	flds	.LCPI14_0(%rip)
	fstpt	(%rsp)
	callq	logl
	fstpt	68(%rsp)                # 10-byte Folded Spill
	flds	.LCPI14_1(%rip)
	fstpt	(%rsp)
	callq	logl
	fldt	68(%rsp)                # 10-byte Folded Reload
	fdivp	%st(1)
	fnstcw	30(%rsp)
	flds	.LCPI14_2(%rip)
	movzwl	30(%rsp), %eax
	movw	$3199, 30(%rsp)         # imm = 0xC7F
	fldcw	30(%rsp)
	fld	%st(1)
	fsub	%st(1)
	movw	%ax, 30(%rsp)
	fistpll	56(%rsp)
	fldcw	30(%rsp)
	fnstcw	28(%rsp)
	movzwl	28(%rsp), %eax
	movw	$3199, 28(%rsp)         # imm = 0xC7F
	fldcw	28(%rsp)
	movw	%ax, 28(%rsp)
	fld	%st(1)
	fistpll	48(%rsp)
	fldcw	28(%rsp)
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jae	.LBB14_1
# %bb.2:
	movq	48(%rsp), %rcx
	jmp	.LBB14_3
.LBB14_1:
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	56(%rsp), %rcx
.LBB14_3:
	leaq	52(%rcx), %rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	$1, %rax
	movl	$1, %r11d
	cmovaq	%rax, %r11
	testq	%r11, %r11
	je	.LBB14_4
# %bb.7:
	movabsq	$-5403634167711393303, %rax # imm = 0xB5026F5AA96619E9
	movq	2496(%rbx), %rdx
	xorpd	%xmm0, %xmm0
	movsd	.LCPI14_3(%rip), %xmm1  # xmm1 = mem[0],zero
	movq	$-2147483648, %r8       # imm = 0x80000000
	movabsq	$22906492245, %r9       # imm = 0x555555555
	movabsq	$8202884508482404352, %r10 # imm = 0x71D67FFFEDA60000
	movdqa	.LCPI14_4(%rip), %xmm2  # xmm2 = [1127219200,1160773632,0,0]
	movapd	.LCPI14_5(%rip), %xmm3  # xmm3 = [4.503600e+15,1.934281e+25]
	.p2align	4, 0x90
.LBB14_8:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_10 Depth 2
                                        #     Child Loop BB14_12 Depth 2
	cmpq	$311, %rdx              # imm = 0x137
	jbe	.LBB14_14
# %bb.9:                                #   in Loop: Header=BB14_8 Depth=1
	movq	(%rbx), %rsi
	movq	$-156, %rdx
	.p2align	4, 0x90
.LBB14_10:                              #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andq	$-2147483648, %rsi      # imm = 0x80000000
	movq	1256(%rbx,%rdx,8), %rcx
	movl	%ecx, %edi
	andl	$2147483646, %edi       # imm = 0x7FFFFFFE
	orq	%rsi, %rdi
	shrq	%rdi
	xorq	2496(%rbx,%rdx,8), %rdi
	movq	%rcx, %rsi
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$1, %ecx
	negq	%rcx
	andq	%rax, %rcx
	xorq	%rdi, %rcx
	movq	%rcx, 1248(%rbx,%rdx,8)
	addq	$1, %rdx
	jne	.LBB14_10
# %bb.11:                               #   in Loop: Header=BB14_8 Depth=1
	movq	1248(%rbx), %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB14_12:                              #   Parent Loop BB14_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andq	$-2147483648, %rsi      # imm = 0x80000000
	movq	1256(%rbx,%rdx,8), %rcx
	movl	%ecx, %edi
	andl	$2147483646, %edi       # imm = 0x7FFFFFFE
	orq	%rsi, %rdi
	shrq	%rdi
	xorq	(%rbx,%rdx,8), %rdi
	movq	%rcx, %rsi
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$1, %ecx
	negq	%rcx
	andq	%rax, %rcx
	xorq	%rdi, %rcx
	movq	%rcx, 1248(%rbx,%rdx,8)
	addq	$1, %rdx
	cmpq	$155, %rdx
	jne	.LBB14_12
# %bb.13:                               #   in Loop: Header=BB14_8 Depth=1
	movq	2488(%rbx), %rcx
	andq	%r8, %rcx
	movq	(%rbx), %rdx
	movl	%edx, %esi
	andl	$2147483646, %esi       # imm = 0x7FFFFFFE
	orq	%rcx, %rsi
	shrq	%rsi
	xorq	1240(%rbx), %rsi
	andl	$1, %edx
	negq	%rdx
	andq	%rax, %rdx
	xorq	%rsi, %rdx
	movq	%rdx, 2488(%rbx)
	movq	$0, 2496(%rbx)
	xorl	%edx, %edx
.LBB14_14:                              #   in Loop: Header=BB14_8 Depth=1
	leaq	1(%rdx), %rsi
	movq	%rsi, 2496(%rbx)
	movq	(%rbx,%rdx,8), %rcx
	movq	%rcx, %rdx
	shrq	$29, %rdx
	andq	%r9, %rdx
	xorq	%rcx, %rdx
	movq	%rdx, %rcx
	shlq	$17, %rcx
	andq	%r10, %rcx
	xorq	%rdx, %rcx
	movq	%rcx, %rdx
	andq	$-16521, %rdx           # imm = 0xBF77
	shlq	$37, %rdx
	xorq	%rcx, %rdx
	movq	%rdx, %rcx
	shrq	$43, %rcx
	xorq	%rdx, %rcx
	movq	%rcx, %xmm4
	punpckldq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	subpd	%xmm3, %xmm4
	pshufd	$78, %xmm4, %xmm5       # xmm5 = xmm4[2,3,0,1]
	addpd	%xmm4, %xmm5
	mulsd	%xmm1, %xmm5
	movsd	%xmm1, 40(%rsp)
	fldl	40(%rsp)
	fmuls	.LCPI14_0(%rip)
	addsd	%xmm5, %xmm0
	fstpl	32(%rsp)
	movsd	32(%rsp), %xmm1         # xmm1 = mem[0],zero
	movq	%rsi, %rdx
	addq	$-1, %r11
	jne	.LBB14_8
	jmp	.LBB14_5
.LBB14_4:
	movsd	.LCPI14_3(%rip), %xmm1  # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
.LBB14_5:
	divsd	%xmm1, %xmm0
	ucomisd	.LCPI14_3(%rip), %xmm0
	jae	.LBB14_6
# %bb.15:
	addq	$80, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB14_6:
	.cfi_def_cfa_offset 96
	movsd	.LCPI14_3(%rip), %xmm0  # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	addq	$80, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	nextafter               # TAILCALL
.Lfunc_end14:
	.size	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_, .Lfunc_end14-_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEET_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm24ELm10ELm24EEET_RT1_
.LCPI15_0:
	.long	1266679808              # float 16777216
.LCPI15_1:
	.long	1073741824              # float 2
.LCPI15_2:
	.long	1593835520              # float 9.22337203E+18
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI15_3:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI15_4:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI15_5:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.text._ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm24ELm10ELm24EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm24ELm10ELm24EEET_RT1_,comdat
	.weak	_ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm24ELm10ELm24EEET_RT1_
	.p2align	4, 0x90
	.type	_ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm24ELm10ELm24EEET_RT1_,@function
_ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm24ELm10ELm24EEET_RT1_: # @_ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm24ELm10ELm24EEET_RT1_
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	flds	.LCPI15_0(%rip)
	fstpt	(%rsp)
	callq	logl
	fstpt	60(%rsp)                # 10-byte Folded Spill
	flds	.LCPI15_1(%rip)
	fstpt	(%rsp)
	callq	logl
	fldt	60(%rsp)                # 10-byte Folded Reload
	fdivp	%st(1)
	fnstcw	22(%rsp)
	flds	.LCPI15_2(%rip)
	movzwl	22(%rsp), %eax
	movw	$3199, 22(%rsp)         # imm = 0xC7F
	fldcw	22(%rsp)
	fld	%st(1)
	fsub	%st(1)
	movw	%ax, 22(%rsp)
	fistpll	48(%rsp)
	fldcw	22(%rsp)
	fnstcw	20(%rsp)
	movzwl	20(%rsp), %eax
	movw	$3199, 20(%rsp)         # imm = 0xC7F
	fldcw	20(%rsp)
	movw	%ax, 20(%rsp)
	fld	%st(1)
	fistpll	40(%rsp)
	fldcw	20(%rsp)
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jae	.LBB15_1
# %bb.2:
	movq	40(%rsp), %rcx
	jmp	.LBB15_3
.LBB15_1:
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	48(%rsp), %rcx
.LBB15_3:
	leaq	52(%rcx), %rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	$1, %rax
	movl	$1, %r9d
	cmovaq	%rax, %r9
	testq	%r9, %r9
	je	.LBB15_4
# %bb.7:
	movq	200(%r14), %rax
	xorpd	%xmm0, %xmm0
	movsd	.LCPI15_3(%rip), %xmm1  # xmm1 = mem[0],zero
	xorl	%r8d, %r8d
	movdqa	.LCPI15_4(%rip), %xmm2  # xmm2 = [1127219200,1160773632,0,0]
	movapd	.LCPI15_5(%rip), %xmm3  # xmm3 = [4.503600e+15,1.934281e+25]
	.p2align	4, 0x90
.LBB15_8:                               # =>This Inner Loop Header: Depth=1
	leaq	-10(%rax), %rsi
	leaq	14(%rax), %rdi
	testq	%rsi, %rsi
	cmovnsq	%rsi, %rdi
	movq	(%r14,%rdi,8), %rsi
	movq	(%r14,%rax,8), %rdi
	movq	192(%r14), %rdx
	leaq	(%rdx,%rdi), %r10
	leaq	16777216(%rsi), %rcx
	xorl	%ebx, %ebx
	cmpq	%r10, %rsi
	setb	%bl
	cmovaeq	%rsi, %rcx
	subq	%rdi, %rcx
	subq	%rdx, %rcx
	movq	%rbx, 192(%r14)
	movq	%rcx, (%r14,%rax,8)
	movq	200(%r14), %rax
	addq	$1, %rax
	cmpq	$23, %rax
	cmovaq	%r8, %rax
	movq	%rax, 200(%r14)
	movq	%rcx, %xmm4
	punpckldq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	subpd	%xmm3, %xmm4
	pshufd	$78, %xmm4, %xmm5       # xmm5 = xmm4[2,3,0,1]
	addpd	%xmm4, %xmm5
	mulsd	%xmm1, %xmm5
	movsd	%xmm1, 32(%rsp)
	fldl	32(%rsp)
	fmuls	.LCPI15_0(%rip)
	addsd	%xmm5, %xmm0
	fstpl	24(%rsp)
	movsd	24(%rsp), %xmm1         # xmm1 = mem[0],zero
	addq	$-1, %r9
	jne	.LBB15_8
	jmp	.LBB15_5
.LBB15_4:
	movsd	.LCPI15_3(%rip), %xmm1  # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
.LBB15_5:
	divsd	%xmm1, %xmm0
	ucomisd	.LCPI15_3(%rip), %xmm0
	jae	.LBB15_6
# %bb.9:
	addq	$72, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB15_6:
	.cfi_def_cfa_offset 96
	movsd	.LCPI15_3(%rip), %xmm0  # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	addq	$72, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	nextafter               # TAILCALL
.Lfunc_end15:
	.size	_ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm24ELm10ELm24EEET_RT1_, .Lfunc_end15-_ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm24ELm10ELm24EEET_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm48ELm5ELm12EEET_RT1_
.LCPI16_0:
	.long	1468006400              # float 2.81474977E+14
.LCPI16_1:
	.long	1073741824              # float 2
.LCPI16_2:
	.long	1593835520              # float 9.22337203E+18
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI16_3:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI16_4:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI16_5:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.text._ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm48ELm5ELm12EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm48ELm5ELm12EEET_RT1_,comdat
	.weak	_ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm48ELm5ELm12EEET_RT1_
	.p2align	4, 0x90
	.type	_ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm48ELm5ELm12EEET_RT1_,@function
_ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm48ELm5ELm12EEET_RT1_: # @_ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm48ELm5ELm12EEET_RT1_
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$72, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %r14
	flds	.LCPI16_0(%rip)
	fstpt	(%rsp)
	callq	logl
	fstpt	60(%rsp)                # 10-byte Folded Spill
	flds	.LCPI16_1(%rip)
	fstpt	(%rsp)
	callq	logl
	fldt	60(%rsp)                # 10-byte Folded Reload
	fdivp	%st(1)
	fnstcw	22(%rsp)
	flds	.LCPI16_2(%rip)
	movzwl	22(%rsp), %eax
	movw	$3199, 22(%rsp)         # imm = 0xC7F
	fldcw	22(%rsp)
	fld	%st(1)
	fsub	%st(1)
	movw	%ax, 22(%rsp)
	fistpll	48(%rsp)
	fldcw	22(%rsp)
	fnstcw	20(%rsp)
	movzwl	20(%rsp), %eax
	movw	$3199, 20(%rsp)         # imm = 0xC7F
	fldcw	20(%rsp)
	movw	%ax, 20(%rsp)
	fld	%st(1)
	fistpll	40(%rsp)
	fldcw	20(%rsp)
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jae	.LBB16_1
# %bb.2:
	movq	40(%rsp), %rcx
	jmp	.LBB16_3
.LBB16_1:
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	48(%rsp), %rcx
.LBB16_3:
	leaq	52(%rcx), %rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	$1, %rax
	movl	$1, %r10d
	cmovaq	%rax, %r10
	testq	%r10, %r10
	je	.LBB16_4
# %bb.7:
	movq	104(%r14), %rax
	xorpd	%xmm0, %xmm0
	movsd	.LCPI16_3(%rip), %xmm1  # xmm1 = mem[0],zero
	movabsq	$281474976710656, %r8   # imm = 0x1000000000000
	xorl	%r9d, %r9d
	movdqa	.LCPI16_4(%rip), %xmm2  # xmm2 = [1127219200,1160773632,0,0]
	movapd	.LCPI16_5(%rip), %xmm3  # xmm3 = [4.503600e+15,1.934281e+25]
	.p2align	4, 0x90
.LBB16_8:                               # =>This Inner Loop Header: Depth=1
	leaq	-5(%rax), %rdi
	leaq	7(%rax), %rdx
	testq	%rdi, %rdi
	cmovnsq	%rdi, %rdx
	movq	(%r14,%rdx,8), %rdx
	movq	(%r14,%rax,8), %rdi
	movq	96(%r14), %rsi
	leaq	(%rsi,%rdi), %r11
	leaq	(%rdx,%r8), %rcx
	xorl	%ebx, %ebx
	cmpq	%r11, %rdx
	setb	%bl
	cmovaeq	%rdx, %rcx
	subq	%rdi, %rcx
	subq	%rsi, %rcx
	movq	%rbx, 96(%r14)
	movq	%rcx, (%r14,%rax,8)
	movq	104(%r14), %rax
	addq	$1, %rax
	cmpq	$11, %rax
	cmovaq	%r9, %rax
	movq	%rax, 104(%r14)
	movq	%rcx, %xmm4
	punpckldq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	subpd	%xmm3, %xmm4
	pshufd	$78, %xmm4, %xmm5       # xmm5 = xmm4[2,3,0,1]
	addpd	%xmm4, %xmm5
	mulsd	%xmm1, %xmm5
	movsd	%xmm1, 32(%rsp)
	fldl	32(%rsp)
	fmuls	.LCPI16_0(%rip)
	addsd	%xmm5, %xmm0
	fstpl	24(%rsp)
	movsd	24(%rsp), %xmm1         # xmm1 = mem[0],zero
	addq	$-1, %r10
	jne	.LBB16_8
	jmp	.LBB16_5
.LBB16_4:
	movsd	.LCPI16_3(%rip), %xmm1  # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
.LBB16_5:
	divsd	%xmm1, %xmm0
	ucomisd	.LCPI16_3(%rip), %xmm0
	jae	.LBB16_6
# %bb.9:
	addq	$72, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB16_6:
	.cfi_def_cfa_offset 96
	movsd	.LCPI16_3(%rip), %xmm0  # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	addq	$72, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	nextafter               # TAILCALL
.Lfunc_end16:
	.size	_ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm48ELm5ELm12EEET_RT1_, .Lfunc_end16-_ZSt18generate_canonicalIdLm53ESt26subtract_with_carry_engineImLm48ELm5ELm12EEET_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEEEdRT_RKNS0_10param_typeE
.LCPI17_0:
	.long	1266679808              # float 16777216
.LCPI17_1:
	.long	1073741824              # float 2
.LCPI17_2:
	.long	1593835520              # float 9.22337203E+18
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI17_3:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI17_4:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI17_5:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.text._ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEEEdRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEEEdRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEEEdRT_RKNS0_10param_typeE
	.p2align	4, 0x90
	.type	_ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEEEdRT_RKNS0_10param_typeE,@function
_ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEEEdRT_RKNS0_10param_typeE: # @_ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEEEdRT_RKNS0_10param_typeE
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	flds	.LCPI17_0(%rip)
	fstpt	(%rsp)
	callq	logl
	fstpt	24(%rsp)                # 10-byte Folded Spill
	flds	.LCPI17_1(%rip)
	fstpt	(%rsp)
	callq	logl
	fldt	24(%rsp)                # 10-byte Folded Reload
	fdivp	%st(1)
	fnstcw	22(%rsp)
	flds	.LCPI17_2(%rip)
	movzwl	22(%rsp), %eax
	movw	$3199, 22(%rsp)         # imm = 0xC7F
	fldcw	22(%rsp)
	fld	%st(1)
	fsub	%st(1)
	movw	%ax, 22(%rsp)
	fistpll	72(%rsp)
	fldcw	22(%rsp)
	fnstcw	20(%rsp)
	movzwl	20(%rsp), %eax
	movw	$3199, 20(%rsp)         # imm = 0xC7F
	fldcw	20(%rsp)
	movw	%ax, 20(%rsp)
	fld	%st(1)
	fistpll	64(%rsp)
	fldcw	20(%rsp)
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jae	.LBB17_1
# %bb.2:
	movq	64(%rsp), %rcx
	jmp	.LBB17_3
.LBB17_1:
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	72(%rsp), %rcx
.LBB17_3:
	leaq	52(%rcx), %rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	$1, %rax
	movl	$1, %ebx
	cmovaq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB17_4
# %bb.8:
	xorpd	%xmm2, %xmm2
	movsd	.LCPI17_3(%rip), %xmm0  # xmm0 = mem[0],zero
	.p2align	4, 0x90
.LBB17_9:                               # =>This Inner Loop Header: Depth=1
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	movq	%r15, %rdi
	callq	_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEclEv
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, %xmm0
	punpckldq	.LCPI17_4(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI17_5(%rip), %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm0, 56(%rsp)
	fldl	56(%rsp)
	fmuls	.LCPI17_0(%rip)
	addsd	%xmm1, %xmm2
	fstpl	48(%rsp)
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	addq	$-1, %rbx
	jne	.LBB17_9
	jmp	.LBB17_5
.LBB17_4:
	movsd	.LCPI17_3(%rip), %xmm0  # xmm0 = mem[0],zero
	xorpd	%xmm2, %xmm2
.LBB17_5:
	divsd	%xmm0, %xmm2
	ucomisd	.LCPI17_3(%rip), %xmm2
	jae	.LBB17_6
.LBB17_7:
	movsd	(%r14), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%r14), %xmm0          # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	addq	$80, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB17_6:
	.cfi_def_cfa_offset 112
	movsd	.LCPI17_3(%rip), %xmm0  # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	callq	nextafter
	movapd	%xmm0, %xmm2
	jmp	.LBB17_7
.Lfunc_end17:
	.size	_ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEEEdRT_RKNS0_10param_typeE, .Lfunc_end17-_ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEEEdRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEclEv,"axG",@progbits,_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEclEv,comdat
	.weak	_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEclEv # -- Begin function _ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEclEv
	.p2align	4, 0x90
	.type	_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEclEv,@function
_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEclEv: # @_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEclEv
	.cfi_startproc
# %bb.0:
	movq	208(%rdi), %r9
	cmpq	$23, %r9
	jb	.LBB18_5
# %bb.1:
	cmpq	$223, %r9
	je	.LBB18_4
# %bb.2:
	movq	200(%rdi), %rcx
	addq	$-223, %r9
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB18_3:                               # =>This Inner Loop Header: Depth=1
	leaq	-10(%rcx), %rsi
	leaq	14(%rcx), %rdx
	testq	%rsi, %rsi
	cmovnsq	%rsi, %rdx
	movq	192(%rdi), %rsi
	addq	(%rdi,%rcx,8), %rsi
	movq	(%rdi,%rdx,8), %rdx
	leaq	16777216(%rdx), %rax
	xorl	%r10d, %r10d
	cmpq	%rsi, %rdx
	setb	%r10b
	cmovaeq	%rdx, %rax
	subq	%rsi, %rax
	movq	%r10, 192(%rdi)
	movq	%rax, (%rdi,%rcx,8)
	movq	200(%rdi), %rcx
	addq	$1, %rcx
	cmpq	$23, %rcx
	cmovaq	%r8, %rcx
	movq	%rcx, 200(%rdi)
	addq	$1, %r9
	jne	.LBB18_3
.LBB18_4:
	movq	$0, 208(%rdi)
	xorl	%r9d, %r9d
.LBB18_5:
	addq	$1, %r9
	movq	%r9, 208(%rdi)
	movq	192(%rdi), %r8
	movq	200(%rdi), %rdx
	leaq	-10(%rdx), %rax
	leaq	14(%rdx), %rsi
	testq	%rax, %rax
	cmovnsq	%rax, %rsi
	movq	(%rdi,%rsi,8), %rsi
	movq	(%rdi,%rdx,8), %r10
	leaq	(%r8,%r10), %r9
	leaq	16777216(%rsi), %rax
	xorl	%ecx, %ecx
	cmpq	%r9, %rsi
	setb	%cl
	cmovaeq	%rsi, %rax
	subq	%r10, %rax
	subq	%r8, %rax
	movq	%rcx, 192(%rdi)
	movq	%rax, (%rdi,%rdx,8)
	movq	200(%rdi), %rcx
	addq	$1, %rcx
	xorl	%edx, %edx
	cmpq	$23, %rcx
	cmovbeq	%rcx, %rdx
	movq	%rdx, 200(%rdi)
	retq
.Lfunc_end18:
	.size	_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEclEv, .Lfunc_end18-_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm24ELm10ELm24EELm223ELm23EEclEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function _ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEEdRT_RKNS0_10param_typeE
.LCPI19_0:
	.long	1468006400              # float 2.81474977E+14
.LCPI19_1:
	.long	1073741824              # float 2
.LCPI19_2:
	.long	1593835520              # float 9.22337203E+18
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI19_3:
	.quad	4607182418800017408     # double 1
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI19_4:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI19_5:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.text._ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEEdRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEEdRT_RKNS0_10param_typeE,comdat
	.weak	_ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEEdRT_RKNS0_10param_typeE
	.p2align	4, 0x90
	.type	_ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEEdRT_RKNS0_10param_typeE,@function
_ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEEdRT_RKNS0_10param_typeE: # @_ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEEdRT_RKNS0_10param_typeE
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$80, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	flds	.LCPI19_0(%rip)
	fstpt	(%rsp)
	callq	logl
	fstpt	24(%rsp)                # 10-byte Folded Spill
	flds	.LCPI19_1(%rip)
	fstpt	(%rsp)
	callq	logl
	fldt	24(%rsp)                # 10-byte Folded Reload
	fdivp	%st(1)
	fnstcw	22(%rsp)
	flds	.LCPI19_2(%rip)
	movzwl	22(%rsp), %eax
	movw	$3199, 22(%rsp)         # imm = 0xC7F
	fldcw	22(%rsp)
	fld	%st(1)
	fsub	%st(1)
	movw	%ax, 22(%rsp)
	fistpll	72(%rsp)
	fldcw	22(%rsp)
	fnstcw	20(%rsp)
	movzwl	20(%rsp), %eax
	movw	$3199, 20(%rsp)         # imm = 0xC7F
	fldcw	20(%rsp)
	movw	%ax, 20(%rsp)
	fld	%st(1)
	fistpll	64(%rsp)
	fldcw	20(%rsp)
	fxch	%st(1)
	fucompi	%st(1)
	fstp	%st(0)
	jae	.LBB19_1
# %bb.2:
	movq	64(%rsp), %rcx
	jmp	.LBB19_3
.LBB19_1:
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	72(%rsp), %rcx
.LBB19_3:
	leaq	52(%rcx), %rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	$1, %rax
	movl	$1, %ebx
	cmovaq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB19_4
# %bb.8:
	xorpd	%xmm2, %xmm2
	movsd	.LCPI19_3(%rip), %xmm0  # xmm0 = mem[0],zero
	.p2align	4, 0x90
.LBB19_9:                               # =>This Inner Loop Header: Depth=1
	movsd	%xmm0, 40(%rsp)         # 8-byte Spill
	movsd	%xmm2, 24(%rsp)         # 8-byte Spill
	movq	%r15, %rdi
	callq	_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv
	movsd	24(%rsp), %xmm2         # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movq	%rax, %xmm0
	punpckldq	.LCPI19_4(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI19_5(%rip), %xmm0
	pshufd	$78, %xmm0, %xmm1       # xmm1 = xmm0[2,3,0,1]
	addpd	%xmm0, %xmm1
	movsd	40(%rsp), %xmm0         # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movsd	%xmm0, 56(%rsp)
	fldl	56(%rsp)
	fmuls	.LCPI19_0(%rip)
	addsd	%xmm1, %xmm2
	fstpl	48(%rsp)
	movsd	48(%rsp), %xmm0         # xmm0 = mem[0],zero
	addq	$-1, %rbx
	jne	.LBB19_9
	jmp	.LBB19_5
.LBB19_4:
	movsd	.LCPI19_3(%rip), %xmm0  # xmm0 = mem[0],zero
	xorpd	%xmm2, %xmm2
.LBB19_5:
	divsd	%xmm0, %xmm2
	ucomisd	.LCPI19_3(%rip), %xmm2
	jae	.LBB19_6
.LBB19_7:
	movsd	(%r14), %xmm1           # xmm1 = mem[0],zero
	movsd	8(%r14), %xmm0          # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	addq	$80, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB19_6:
	.cfi_def_cfa_offset 112
	movsd	.LCPI19_3(%rip), %xmm0  # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	callq	nextafter
	movapd	%xmm0, %xmm2
	jmp	.LBB19_7
.Lfunc_end19:
	.size	_ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEEdRT_RKNS0_10param_typeE, .Lfunc_end19-_ZNSt25uniform_real_distributionIdEclISt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEEEdRT_RKNS0_10param_typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv,"axG",@progbits,_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv,comdat
	.weak	_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv # -- Begin function _ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv
	.p2align	4, 0x90
	.type	_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv,@function
_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv: # @_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv
	.cfi_startproc
# %bb.0:
	movabsq	$281474976710656, %rax  # imm = 0x1000000000000
	movq	112(%rdi), %r9
	cmpq	$11, %r9
	jb	.LBB20_5
# %bb.1:
	cmpq	$389, %r9               # imm = 0x185
	je	.LBB20_4
# %bb.2:
	movq	104(%rdi), %rdx
	addq	$-389, %r9              # imm = 0xFE7B
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB20_3:                               # =>This Inner Loop Header: Depth=1
	leaq	-5(%rdx), %rsi
	leaq	7(%rdx), %rcx
	testq	%rsi, %rsi
	cmovnsq	%rsi, %rcx
	movq	96(%rdi), %rsi
	addq	(%rdi,%rdx,8), %rsi
	movq	(%rdi,%rcx,8), %r10
	leaq	(%r10,%rax), %rcx
	xorl	%r11d, %r11d
	cmpq	%rsi, %r10
	setb	%r11b
	cmovaeq	%r10, %rcx
	subq	%rsi, %rcx
	movq	%r11, 96(%rdi)
	movq	%rcx, (%rdi,%rdx,8)
	movq	104(%rdi), %rdx
	addq	$1, %rdx
	cmpq	$11, %rdx
	cmovaq	%r8, %rdx
	movq	%rdx, 104(%rdi)
	addq	$1, %r9
	jne	.LBB20_3
.LBB20_4:
	movq	$0, 112(%rdi)
	xorl	%r9d, %r9d
.LBB20_5:
	addq	$1, %r9
	movq	%r9, 112(%rdi)
	movq	96(%rdi), %r8
	movq	104(%rdi), %rdx
	leaq	-5(%rdx), %rsi
	leaq	7(%rdx), %rcx
	testq	%rsi, %rsi
	cmovnsq	%rsi, %rcx
	movq	(%rdi,%rcx,8), %rcx
	movq	(%rdi,%rdx,8), %r10
	leaq	(%r8,%r10), %r9
	addq	%rcx, %rax
	xorl	%esi, %esi
	cmpq	%r9, %rcx
	setb	%sil
	cmovaeq	%rcx, %rax
	subq	%r10, %rax
	subq	%r8, %rax
	movq	%rsi, 96(%rdi)
	movq	%rax, (%rdi,%rdx,8)
	movq	104(%rdi), %rcx
	addq	$1, %rcx
	xorl	%edx, %edx
	cmpq	$11, %rcx
	cmovbeq	%rcx, %rdx
	movq	%rdx, 104(%rdi)
	retq
.Lfunc_end20:
	.size	_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv, .Lfunc_end20-_ZNSt20discard_block_engineISt26subtract_with_carry_engineImLm48ELm5ELm12EELm389ELm11EEclEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function _ZSt18generate_canonicalIdLm53ESt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EEET_RT1_
.LCPI21_0:
	.quad	4746794007240114176     # double 2147483646
.LCPI21_3:
	.quad	4607182418800017408     # double 1
.LCPI21_4:
	.quad	1602224128              # 0x5f800000
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI21_1:
	.long	1073741824              # float 2
.LCPI21_2:
	.long	1593835520              # float 9.22337203E+18
.LCPI21_5:
	.long	1132462080              # float 256
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI21_6:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI21_7:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.text._ZSt18generate_canonicalIdLm53ESt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EEET_RT1_,"axG",@progbits,_ZSt18generate_canonicalIdLm53ESt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EEET_RT1_,comdat
	.weak	_ZSt18generate_canonicalIdLm53ESt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EEET_RT1_
	.p2align	4, 0x90
	.type	_ZSt18generate_canonicalIdLm53ESt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EEET_RT1_,@function
_ZSt18generate_canonicalIdLm53ESt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EEET_RT1_: # @_ZSt18generate_canonicalIdLm53ESt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EEET_RT1_
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$112, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	fldl	.LCPI21_0(%rip)
	fld	%st(0)
	fstpt	100(%rsp)               # 10-byte Folded Spill
	fstpt	(%rsp)
	callq	logl
	fstpt	88(%rsp)                # 10-byte Folded Spill
	flds	.LCPI21_1(%rip)
	fstpt	(%rsp)
	callq	logl
	fldt	88(%rsp)                # 10-byte Folded Reload
	fdivp	%st(1)
	fnstcw	30(%rsp)
	flds	.LCPI21_2(%rip)
	movzwl	30(%rsp), %eax
	movw	$3199, 30(%rsp)         # imm = 0xC7F
	fldcw	30(%rsp)
	fld	%st(1)
	fsub	%st(1)
	movw	%ax, 30(%rsp)
	fistpll	80(%rsp)
	fldcw	30(%rsp)
	fnstcw	28(%rsp)
	movzwl	28(%rsp), %eax
	movw	$3199, 28(%rsp)         # imm = 0xC7F
	fldcw	28(%rsp)
	movw	%ax, 28(%rsp)
	fld	%st(1)
	fistpll	72(%rsp)
	fldcw	28(%rsp)
	movabsq	$-9223372036854775808, %r8 # imm = 0x8000000000000000
	fxch	%st(1)
	fucompi	%st(1)
	jae	.LBB21_1
# %bb.2:
	movq	72(%rsp), %rcx
	jmp	.LBB21_3
.LBB21_1:
	movq	80(%rsp), %rcx
	xorq	%r8, %rcx
.LBB21_3:
	leaq	52(%rcx), %rax
	xorl	%edx, %edx
	divq	%rcx
	cmpq	$1, %rax
	movl	$1, %edi
	cmovaq	%rax, %rdi
	testq	%rdi, %rdi
	fldt	100(%rsp)               # 10-byte Folded Reload
	je	.LBB21_4
# %bb.7:
	movq	2056(%rbx), %rax
	xorpd	%xmm0, %xmm0
	movsd	.LCPI21_3(%rip), %xmm1  # xmm1 = mem[0],zero
	movabsq	$8589934597, %r9        # imm = 0x200000005
	movdqa	.LCPI21_6(%rip), %xmm2  # xmm2 = [1127219200,1160773632,0,0]
	movapd	.LCPI21_7(%rip), %xmm3  # xmm3 = [4.503600e+15,1.934281e+25]
	.p2align	4, 0x90
.LBB21_8:                               # =>This Inner Loop Header: Depth=1
	xorl	%ecx, %ecx
	addq	$-1, %rax
	movq	%rax, 64(%rsp)
	setns	%cl
	fildll	64(%rsp)
	fadds	.LCPI21_4(,%rcx,4)
	fdiv	%st(1)
	fmuls	.LCPI21_5(%rip)
	fnstcw	26(%rsp)
	movzwl	26(%rsp), %eax
	movw	$3199, 26(%rsp)         # imm = 0xC7F
	fldcw	26(%rsp)
	fld	%st(0)
	fsub	%st(3)
	movw	%ax, 26(%rsp)
	fistpll	56(%rsp)
	fldcw	26(%rsp)
	fnstcw	24(%rsp)
	movzwl	24(%rsp), %eax
	movw	$3199, 24(%rsp)         # imm = 0xC7F
	fldcw	24(%rsp)
	movw	%ax, 24(%rsp)
	fld	%st(0)
	fistpll	48(%rsp)
	fldcw	24(%rsp)
	fucompi	%st(2)
	jae	.LBB21_9
# %bb.10:                               #   in Loop: Header=BB21_8 Depth=1
	movq	48(%rsp), %rsi
	jmp	.LBB21_11
	.p2align	4, 0x90
.LBB21_9:                               #   in Loop: Header=BB21_8 Depth=1
	movq	56(%rsp), %rsi
	xorq	%r8, %rsi
.LBB21_11:                              #   in Loop: Header=BB21_8 Depth=1
	movq	8(%rbx,%rsi,8), %rax
	movq	%rax, 2056(%rbx)
	imulq	$16807, (%rbx), %rcx    # imm = 0x41A7
	movq	%rcx, %rax
	mulq	%r9
	movq	%rcx, %rax
	subq	%rdx, %rax
	shrq	%rax
	addq	%rdx, %rax
	shrq	$30, %rax
	movq	%rax, %rdx
	shlq	$31, %rdx
	subq	%rdx, %rax
	addq	%rcx, %rax
	movq	%rax, (%rbx)
	movq	%rax, 8(%rbx,%rsi,8)
	movq	2056(%rbx), %rax
	leaq	-1(%rax), %rcx
	movq	%rcx, %xmm4
	punpckldq	%xmm2, %xmm4    # xmm4 = xmm4[0],xmm2[0],xmm4[1],xmm2[1]
	subpd	%xmm3, %xmm4
	pshufd	$78, %xmm4, %xmm5       # xmm5 = xmm4[2,3,0,1]
	addpd	%xmm4, %xmm5
	mulsd	%xmm1, %xmm5
	movsd	%xmm1, 40(%rsp)
	fld	%st(0)
	fmull	40(%rsp)
	addsd	%xmm5, %xmm0
	fstpl	32(%rsp)
	movsd	32(%rsp), %xmm1         # xmm1 = mem[0],zero
	addq	$-1, %rdi
	jne	.LBB21_8
	jmp	.LBB21_5
.LBB21_4:
	fstp	%st(1)
	fstp	%st(0)
	movsd	.LCPI21_3(%rip), %xmm1  # xmm1 = mem[0],zero
	xorpd	%xmm0, %xmm0
	fldz
	fldz
.LBB21_5:
	fstp	%st(1)
	fstp	%st(0)
	divsd	%xmm1, %xmm0
	ucomisd	.LCPI21_3(%rip), %xmm0
	jae	.LBB21_6
# %bb.12:
	addq	$112, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB21_6:
	.cfi_def_cfa_offset 128
	movsd	.LCPI21_3(%rip), %xmm0  # xmm0 = mem[0],zero
	xorpd	%xmm1, %xmm1
	addq	$112, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	nextafter               # TAILCALL
.Lfunc_end21:
	.size	_ZSt18generate_canonicalIdLm53ESt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EEET_RT1_, .Lfunc_end21-_ZSt18generate_canonicalIdLm53ESt20shuffle_order_engineISt26linear_congruential_engineImLm16807ELm0ELm2147483647EELm256EEET_RT1_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_benchmark.cpp
	.type	_GLOBAL__sub_I_benchmark.cpp,@function
_GLOBAL__sub_I_benchmark.cpp:           # @_GLOBAL__sub_I_benchmark.cpp
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit            # TAILCALL
.Lfunc_end22:
	.size	_GLOBAL__sub_I_benchmark.cpp, .Lfunc_end22-_GLOBAL__sub_I_benchmark.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rand"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Sum:"
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Time:"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"s"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"default"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"random_device"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"minstd_rand0"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"minstd_rand"
	.size	.L.str.7, 12

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"mt19937"
	.size	.L.str.8, 8

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"mt19937_64"
	.size	.L.str.9, 11

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ranlux24_base"
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"ranlux48_base"
	.size	.L.str.11, 14

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"knuth_b"
	.size	.L.str.14, 8

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_benchmark.cpp

	.ident	"clang version 7.0.1 (Fedora 7.0.1-1.fc29)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _GLOBAL__sub_I_benchmark.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cout
