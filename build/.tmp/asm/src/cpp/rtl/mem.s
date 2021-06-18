	.file	"mem.cc"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "Error\0"
	.align 8
.LC1:
	.ascii "internal memory release error.\0"
	.text
	.p2align 4
	.def	_ZdlPv.part.0;	.scl	3;	.type	32;	.endef
	.seh_proc	_ZdlPv.part.0
_ZdlPv.part.0:
.LFB6236:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	leaq	.LC0(%rip), %r8
	leaq	.LC1(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	call	*__imp_GetLastError(%rip)
	movl	%eax, %ecx
	call	*__imp_ExitProcess(%rip)
	nop
	.seh_endproc
	.p2align 4
	.globl	_Znwy
	.def	_Znwy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Znwy
_Znwy:
.LFB6226:
	.seh_endprologue
	movl	$4, %r9d
	movl	$12288, %r8d
	movq	%rcx, %rdx
	xorl	%ecx, %ecx
	rex.W jmp	*__imp_VirtualAlloc(%rip)
	.seh_endproc
	.p2align 4
	.globl	_Znay
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.seh_proc	_Znay
_Znay:
.LFB6238:
	.seh_endprologue
	movl	$4, %r9d
	movl	$12288, %r8d
	movq	%rcx, %rdx
	xorl	%ecx, %ecx
	rex.W jmp	*__imp_VirtualAlloc(%rip)
	.seh_endproc
	.p2align 4
	.globl	_ZdlPvy
	.def	_ZdlPvy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZdlPvy
_ZdlPvy:
.LFB6228:
	pushq	%r12
	.seh_pushreg	%r12
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %r12
	testq	%rcx, %rcx
	je	.L5
	xorl	%edx, %edx
	movl	$32768, %r8d
	call	*__imp_VirtualFree(%rip)
	testl	%eax, %eax
	je	.L10
.L5:
	addq	$32, %rsp
	popq	%r12
	ret
.L10:
	movq	%r12, %rcx
	call	_ZdlPv.part.0
	nop
	.seh_endproc
	.p2align 4
	.globl	_ZdaPvy
	.def	_ZdaPvy;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZdaPvy
_ZdaPvy:
.LFB6240:
	pushq	%r12
	.seh_pushreg	%r12
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %r12
	testq	%rcx, %rcx
	je	.L11
	xorl	%edx, %edx
	movl	$32768, %r8d
	call	*__imp_VirtualFree(%rip)
	testl	%eax, %eax
	je	.L16
.L11:
	addq	$32, %rsp
	popq	%r12
	ret
.L16:
	movq	%r12, %rcx
	call	_ZdlPv.part.0
	nop
	.seh_endproc
	.p2align 4
	.globl	_ZdlPv
	.def	_ZdlPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZdlPv
_ZdlPv:
.LFB6230:
	pushq	%r12
	.seh_pushreg	%r12
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	xorl	%edx, %edx
	movl	$32768, %r8d
	movq	%rcx, %r12
	call	*__imp_VirtualFree(%rip)
	testl	%eax, %eax
	je	.L19
	addq	$32, %rsp
	popq	%r12
	ret
.L19:
	movq	%r12, %rcx
	call	_ZdlPv.part.0
	nop
	.seh_endproc
	.p2align 4
	.globl	_ZdaPv
	.def	_ZdaPv;	.scl	2;	.type	32;	.endef
	.seh_proc	_ZdaPv
_ZdaPv:
.LFB6231:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	xorl	%edx, %edx
	movl	$32768, %r8d
	call	*__imp_VirtualFree(%rip)
	testl	%eax, %eax
	je	.L22
	addq	$40, %rsp
	ret
.L22:
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	leaq	.LC0(%rip), %r8
	leaq	.LC1(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	call	*__imp_GetLastError(%rip)
	movl	%eax, %ecx
	call	*__imp_ExitProcess(%rip)
	nop
	.seh_endproc
	.p2align 4
	.globl	_Z9LazMemSetPviy
	.def	_Z9LazMemSetPviy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9LazMemSetPviy
_Z9LazMemSetPviy:
.LFB6232:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %r9
	testq	%r8, %r8
	je	.L26
	movsbl	%dl, %edx
	call	memset
	movq	%rax, %r9
.L26:
	movq	%r9, %rax
	addq	$40, %rsp
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z9LazMemCpyPvPKvy
	.def	_Z9LazMemCpyPvPKvy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z9LazMemCpyPvPKvy
_Z9LazMemCpyPvPKvy:
.LFB6234:
	.seh_endprologue
	movq	%rcx, %r9
	movq	%rdx, %rcx
	testq	%r8, %r8
	je	.L28
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L29:
	movzbl	(%rcx,%rax), %edx
	movb	%dl, (%r9,%rax)
	addq	$1, %rax
	cmpq	%r8, %rax
	jne	.L29
.L28:
	movq	%r9, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Z10LazMemMovePvPKvy
	.def	_Z10LazMemMovePvPKvy;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z10LazMemMovePvPKvy
_Z10LazMemMovePvPKvy:
.LFB6235:
	.seh_endprologue
	movq	%rcx, %r9
	leaq	-1(%r8), %rax
	cmpq	%rdx, %rcx
	ja	.L35
	xorl	%eax, %eax
	testq	%r8, %r8
	je	.L41
	.p2align 4,,10
	.p2align 3
.L36:
	movzbl	(%rdx,%rax), %ecx
	movb	%cl, (%r9,%rax)
	addq	$1, %rax
	cmpq	%rax, %r8
	jne	.L36
.L41:
	movq	%r9, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L35:
	testq	%r8, %r8
	je	.L41
	.p2align 4,,10
	.p2align 3
.L38:
	movzbl	(%rdx,%rax), %ecx
	movb	%cl, (%r9,%rax)
	subq	$1, %rax
	jb	.L41
	movzbl	(%rdx,%rax), %ecx
	movb	%cl, (%r9,%rax)
	subq	$1, %rax
	jnb	.L38
	jmp	.L41
	.seh_endproc
	.globl	_Unwind_Resume
	.bss
	.align 8
_Unwind_Resume:
	.space 8
	.globl	__gxx_personality_v0
	.align 8
__gxx_personality_v0:
	.space 8
	.ident	"GCC: (Rev11, Built by MSYS2 project) 10.2.0"
	.def	memset;	.scl	2;	.type	32;	.endef
