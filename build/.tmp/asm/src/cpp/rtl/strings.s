	.file	"strings.cc"
	.text
	.p2align 4
	.globl	_$dll$laz_rtl$LazExitProcess
	.def	_$dll$laz_rtl$LazExitProcess;	.scl	2;	.type	32;	.endef
	.seh_proc	_$dll$laz_rtl$LazExitProcess
_$dll$laz_rtl$LazExitProcess:
.LFB6226:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	*__imp_ExitProcess(%rip)
	nop
	.seh_endproc
	.p2align 4
	.globl	LAZEXITPROCEDURE
	.def	LAZEXITPROCEDURE;	.scl	2;	.type	32;	.endef
	.seh_proc	LAZEXITPROCEDURE
LAZEXITPROCEDURE:
.LFB6227:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	*__imp_ExitProcess(%rip)
	nop
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "Error\0"
.LC1:
	.ascii "string is too long\0"
	.text
	.p2align 4
	.globl	CopyPascalString2PChar
	.def	CopyPascalString2PChar;	.scl	2;	.type	32;	.endef
	.seh_proc	CopyPascalString2PChar
CopyPascalString2PChar:
.LFB6228:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	strlen
	cmpq	$255, %rax
	ja	.L6
	movl	$255, %ecx
	addq	$40, %rsp
	jmp	_Znay
.L6:
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
	.globl	isspace
	.def	isspace;	.scl	2;	.type	32;	.endef
	.seh_proc	isspace
isspace:
.LFB6229:
	.seh_endprologue
	xorl	%eax, %eax
	cmpb	$32, %cl
	ja	.L7
	movabsq	$4294979328, %rax
	shrq	%cl, %rax
	andl	$1, %eax
.L7:
	ret
	.seh_endproc
	.p2align 4
	.globl	strcpy
	.def	strcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	strcpy
strcpy:
.LFB6230:
	.seh_endprologue
	xorl	%eax, %eax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	.p2align 4,,10
	.p2align 3
.L11:
	movzbl	(%rcx,%rax), %edx
	movb	%dl, (%r8,%rax)
	addq	$1, %rax
	testb	%dl, %dl
	jne	.L11
	movq	%r8, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	strncpy
	.def	strncpy;	.scl	2;	.type	32;	.endef
	.seh_proc	strncpy
strncpy:
.LFB6231:
	.seh_endprologue
	movq	%rcx, %r9
	testq	%r8, %r8
	je	.L14
	addq	%rcx, %r8
	movq	%rcx, %rax
	.p2align 4,,10
	.p2align 3
.L16:
	movzbl	(%rdx), %ecx
	cmpb	$1, %cl
	movb	%cl, (%rax)
	sbbq	$-1, %rdx
	addq	$1, %rax
	cmpq	%r8, %rax
	jne	.L16
.L14:
	movq	%r9, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	strlcpy
	.def	strlcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	strlcpy
strlcpy:
.LFB6232:
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movq	%rcx, %rsi
	movq	%rdx, %rcx
	movq	%rdx, %r13
	movq	%r8, %rbx
	call	strlen
	movq	%rax, %r12
	testq	%rbx, %rbx
	je	.L23
	leaq	-1(%rbx), %r8
	cmpq	%rbx, %rax
	movq	%r13, %rdx
	movq	%rsi, %rcx
	movq	%r8, %rbx
	cmovb	%rax, %rbx
	movq	%rbx, %r8
	call	_Z9LazMemCpyPvPKvy
	movb	$0, (%rsi,%rbx)
.L23:
	movq	%r12, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%r12
	popq	%r13
	ret
	.seh_endproc
	.p2align 4
	.globl	strcat
	.def	strcat;	.scl	2;	.type	32;	.endef
	.seh_proc	strcat
strcat:
.LFB6233:
	.seh_endprologue
	cmpb	$0, (%rcx)
	movq	%rdx, %r8
	movq	%rcx, %r9
	movq	%rcx, %rdx
	je	.L31
	.p2align 4,,10
	.p2align 3
.L32:
	addq	$1, %rdx
	cmpb	$0, (%rdx)
	jne	.L32
.L31:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L33:
	movzbl	(%r8,%rax), %ecx
	movb	%cl, (%rdx,%rax)
	addq	$1, %rax
	testb	%cl, %cl
	jne	.L33
	movq	%r9, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	strncat
	.def	strncat;	.scl	2;	.type	32;	.endef
	.seh_proc	strncat
strncat:
.LFB6234:
	.seh_endprologue
	movq	%rcx, %r9
	testq	%r8, %r8
	je	.L39
	cmpb	$0, (%rcx)
	movq	%rcx, %rax
	je	.L40
	.p2align 4,,10
	.p2align 3
.L41:
	addq	$1, %rax
	cmpb	$0, (%rax)
	jne	.L41
.L40:
	addq	%rax, %r8
	jmp	.L43
	.p2align 4,,10
	.p2align 3
.L51:
	cmpq	%r8, %rax
	je	.L50
.L43:
	movzbl	(%rdx), %ecx
	addq	$1, %rdx
	addq	$1, %rax
	movb	%cl, -1(%rax)
	testb	%cl, %cl
	jne	.L51
.L39:
	movq	%r9, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L50:
	movb	$0, (%rax)
	movq	%r9, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	strncmp
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strncmp
strncmp:
.LFB6235:
	.seh_endprologue
	movq	%rdx, %r9
	testq	%r8, %r8
	je	.L58
	xorl	%eax, %eax
	jmp	.L55
	.p2align 4,,10
	.p2align 3
.L54:
	testb	%dl, %dl
	je	.L58
	addq	$1, %rax
	cmpq	%r8, %rax
	je	.L58
.L55:
	movzbl	(%rcx,%rax), %edx
	cmpb	(%r9,%rax), %dl
	je	.L54
	sbbl	%eax, %eax
	orl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L58:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4
	.globl	strcmp
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strcmp
strcmp:
.LFB6236:
	.seh_endprologue
	xorl	%eax, %eax
	movq	%rcx, %r8
	movq	%rdx, %rcx
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L61:
	addq	$1, %rax
	testb	%dl, %dl
	je	.L66
.L63:
	movzbl	(%r8,%rax), %edx
	cmpb	(%rcx,%rax), %dl
	je	.L61
	sbbl	%eax, %eax
	orl	$1, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L66:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
.LFB6237:
	.seh_endprologue
	movzbl	(%rcx), %eax
	cmpb	%dl, %al
	jne	.L69
	jmp	.L70
	.p2align 4,,10
	.p2align 3
.L73:
	movzbl	1(%rcx), %eax
	addq	$1, %rcx
	cmpb	%dl, %al
	je	.L70
.L69:
	testb	%al, %al
	jne	.L73
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L70:
	movq	%rcx, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	skip_spaces
	.def	skip_spaces;	.scl	2;	.type	32;	.endef
	.seh_proc	skip_spaces
skip_spaces:
.LFB6238:
	.seh_endprologue
	movq	%rcx, %rax
	movabsq	$4294979328, %rcx
	movzbl	(%rax), %edx
	cmpb	$32, %dl
	ja	.L74
	.p2align 4,,10
	.p2align 3
.L78:
	btq	%rdx, %rcx
	jnc	.L74
	movzbl	1(%rax), %edx
	addq	$1, %rax
	cmpb	$32, %dl
	jbe	.L78
.L74:
	ret
	.seh_endproc
	.p2align 4
	.globl	strim
	.def	strim;	.scl	2;	.type	32;	.endef
	.seh_proc	strim
strim:
.LFB6239:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, %rbx
	call	strlen
	movq	%rax, %rdx
	movq	%rbx, %rax
	testq	%rdx, %rdx
	je	.L79
	leaq	-1(%rbx,%rdx), %rax
	cmpq	%rax, %rbx
	ja	.L81
	movabsq	$4294979328, %rcx
	.p2align 4,,10
	.p2align 3
.L82:
	movzbl	(%rax), %edx
	cmpb	$32, %dl
	jbe	.L87
.L81:
	movabsq	$4294979328, %rcx
	movb	$0, 1(%rax)
	movq	%rbx, %rax
	.p2align 4,,10
	.p2align 3
.L83:
	movzbl	(%rax), %edx
	cmpb	$32, %dl
	jbe	.L88
.L79:
	addq	$32, %rsp
	popq	%rbx
	ret
	.p2align 4,,10
	.p2align 3
.L88:
	btq	%rdx, %rcx
	jnc	.L79
	addq	$1, %rax
	jmp	.L83
	.p2align 4,,10
	.p2align 3
.L87:
	btq	%rdx, %rcx
	jnc	.L81
	subq	$1, %rax
	cmpq	%rax, %rbx
	jbe	.L82
	jmp	.L81
	.seh_endproc
	.p2align 4
	.globl	strlen
	.def	strlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strlen
strlen:
.LFB6240:
	.seh_endprologue
	cmpb	$0, (%rcx)
	je	.L92
	movq	%rcx, %rax
	.p2align 4,,10
	.p2align 3
.L91:
	addq	$1, %rax
	cmpb	$0, (%rax)
	jne	.L91
	subq	%rcx, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L92:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4
	.globl	strnlen
	.def	strnlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strnlen
strnlen:
.LFB6241:
	.seh_endprologue
	testq	%rdx, %rdx
	je	.L98
	addq	%rcx, %rdx
	movq	%rcx, %rax
	jmp	.L97
	.p2align 4,,10
	.p2align 3
.L96:
	addq	$1, %rax
	cmpq	%rax, %rdx
	je	.L101
.L97:
	cmpb	$0, (%rax)
	jne	.L96
	subq	%rcx, %rax
.L94:
	ret
	.p2align 4,,10
	.p2align 3
.L101:
	movq	%rdx, %rax
	subq	%rcx, %rax
	jmp	.L94
.L98:
	xorl	%eax, %eax
	ret
	.seh_endproc
	.p2align 4
	.globl	strreplace
	.def	strreplace;	.scl	2;	.type	32;	.endef
	.seh_proc	strreplace
strreplace:
.LFB6242:
	.seh_endprologue
	movq	%rcx, %rax
	movl	%edx, %ecx
	movzbl	(%rax), %edx
	testb	%dl, %dl
	je	.L103
	.p2align 4,,10
	.p2align 3
.L105:
	cmpb	%dl, %cl
	jne	.L104
	movb	%r8b, (%rax)
.L104:
	movzbl	1(%rax), %edx
	addq	$1, %rax
	testb	%dl, %dl
	jne	.L105
.L103:
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC2:
	.ascii "Warning\0"
	.align 8
.LC3:
	.ascii "No terminal open.\12Do you want open a CRT Terminal ?\0"
	.text
	.p2align 4
	.globl	check_console
	.def	check_console;	.scl	2;	.type	32;	.endef
	.seh_proc	check_console
check_console:
.LFB6243:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	24+LazTerminal(%rip), %eax
	testl	%eax, %eax
	jne	.L111
	xorl	%ecx, %ecx
	movl	$73764, %r9d
	leaq	.LC2(%rip), %r8
	leaq	.LC3(%rip), %rdx
	call	*__imp_MessageBoxA(%rip)
	cmpl	$7, %eax
	je	.L112
.L111:
	call	*__imp_AllocConsole(%rip)
	movq	__imp_GetStdHandle(%rip), %rsi
	movl	$-11, %ecx
	call	*%rsi
	movq	__imp_GetLastError(%rip), %rbx
	movq	%rax, LazTerminal(%rip)
	call	*%rbx
	movl	$-10, %ecx
	call	*%rsi
	movq	%rax, 8+LazTerminal(%rip)
	call	*%rbx
	movl	$-12, %ecx
	call	*%rsi
	movq	%rax, 16+LazTerminal(%rip)
	call	*%rbx
	movl	$-1, %ecx
	call	*__imp_AttachConsole(%rip)
	movl	$1, 24+LazTerminal(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	ret
.L112:
	call	*__imp_GetLastError(%rip)
	movl	%eax, %ecx
	call	*__imp_ExitProcess(%rip)
	nop
	.seh_endproc
	.p2align 4
	.globl	_$dll$laz_rtl$WriteLn
	.def	_$dll$laz_rtl$WriteLn;	.scl	2;	.type	32;	.endef
	.seh_proc	_$dll$laz_rtl$WriteLn
_$dll$laz_rtl$WriteLn:
.LFB6244:
	pushq	%r12
	.seh_pushreg	%r12
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movq	%rcx, %r12
	call	check_console
	movzbl	(%r12), %r8d
	leaq	60(%rsp), %r9
	movq	%r12, %rdx
	movq	$0, 32(%rsp)
	movq	LazTerminal(%rip), %rcx
	call	*__imp_WriteConsoleA(%rip)
	nop
	addq	$64, %rsp
	popq	%r12
	ret
	.seh_endproc
	.p2align 4
	.globl	MouseEventProc
	.def	MouseEventProc;	.scl	2;	.type	32;	.endef
	.seh_proc	MouseEventProc
MouseEventProc:
.LFB6245:
	.seh_endprologue
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC4:
	.ascii "--> %d, %c\12\0"
.LC5:
	.ascii "Info\0"
.LC6:
	.ascii "numerisch\0"
.LC7:
	.ascii "alpha\0"
	.text
	.p2align 4
	.globl	KeyEventProc
	.def	KeyEventProc;	.scl	2;	.type	32;	.endef
	.seh_proc	KeyEventProc
KeyEventProc:
.LFB6246:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$104, %rsp
	.seh_stackalloc	104
	.seh_endprologue
	movdqu	(%rcx), %xmm0
	movd	%xmm0, %eax
	testl	%eax, %eax
	jne	.L126
.L115:
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L126:
	pextrw	$3, %xmm0, %ebx
	leaq	64(%rsp), %r12
	leaq	.LC4(%rip), %rdx
	movzwl	%bx, %r8d
	movq	%r12, %rcx
	movl	%r8d, %r9d
	call	*__imp_wsprintfA(%rip)
	cmpb	$0, 64(%rsp)
	je	.L121
	movq	%r12, %r8
	.p2align 4,,10
	.p2align 3
.L118:
	addq	$1, %r8
	cmpb	$0, (%r8)
	jne	.L118
	subl	%r12d, %r8d
.L117:
	movq	LazTerminal(%rip), %rcx
	leaq	60(%rsp), %r9
	movq	%r12, %rdx
	movq	$0, 32(%rsp)
	call	*__imp_WriteConsoleA(%rip)
	leal	-48(%rbx), %eax
	cmpw	$9, %ax
	jbe	.L127
	subl	$65, %ebx
	cmpw	$25, %bx
	ja	.L115
	xorl	%r9d, %r9d
	leaq	.LC5(%rip), %r8
	leaq	.LC7(%rip), %rdx
	xorl	%ecx, %ecx
	call	*__imp_MessageBoxA(%rip)
	nop
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L127:
	xorl	%r9d, %r9d
	leaq	.LC5(%rip), %r8
	leaq	.LC6(%rip), %rdx
	xorl	%ecx, %ecx
	call	*__imp_MessageBoxA(%rip)
	nop
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	ret
	.p2align 4,,10
	.p2align 3
.L121:
	xorl	%r8d, %r8d
	jmp	.L117
	.seh_endproc
	.p2align 4
	.globl	ResizeEventProc
	.def	ResizeEventProc;	.scl	2;	.type	32;	.endef
	.seh_proc	ResizeEventProc
ResizeEventProc:
.LFB6247:
	.seh_endprologue
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC8:
	.ascii "Terminal operation set READ mode denied.\12Can't get the input handle !\0"
	.align 8
.LC9:
	.ascii "Terminal operation READ denied.\12Can't get the input handle !\0"
.LC10:
	.ascii "\0"
	.text
	.p2align 4
	.globl	_$dll$laz_rtl$ReadLn
	.def	_$dll$laz_rtl$ReadLn;	.scl	2;	.type	32;	.endef
	.seh_proc	_$dll$laz_rtl$ReadLn
_$dll$laz_rtl$ReadLn:
.LFB6248:
	pushq	%r15
	.seh_pushreg	%r15
	pushq	%r14
	.seh_pushreg	%r14
	pushq	%r13
	.seh_pushreg	%r13
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$2632, %rsp
	.seh_stackalloc	2632
	.seh_endprologue
	call	check_console
	movl	$255, %ecx
	call	_Znay
	movq	8+LazTerminal(%rip), %rcx
	movl	$24, %edx
	movq	$0, 40+LazTerminal(%rip)
	movq	%rax, 32+LazTerminal(%rip)
	call	*__imp_SetConsoleMode(%rip)
	testl	%eax, %eax
	je	.L146
	movl	$101, %ebp
	leaq	60(%rsp), %r14
	movq	__imp_ReadConsoleInputA(%rip), %r13
	leaq	64(%rsp), %r12
	leaq	.L136(%rip), %r15
	leaq	32(%rsp), %rdi
	.p2align 4,,10
	.p2align 3
.L130:
	movq	8+LazTerminal(%rip), %rcx
	movq	%r14, %r9
	movl	$128, %r8d
	movq	%r12, %rdx
	call	*%r13
	testl	%eax, %eax
	je	.L147
	movl	60(%rsp), %eax
	movq	%r12, %rbx
	xorl	%esi, %esi
	testl	%eax, %eax
	je	.L138
	.p2align 4,,10
	.p2align 3
.L139:
	cmpw	$16, (%rbx)
	ja	.L145
	movzwl	(%rbx), %eax
	movslq	(%r15,%rax,4), %rax
	addq	%r15, %rax
	jmp	*%rax
	.section .rdata,"dr"
	.align 4
.L136:
	.long	.L145-.L136
	.long	.L137-.L136
	.long	.L135-.L136
	.long	.L145-.L136
	.long	.L135-.L136
	.long	.L145-.L136
	.long	.L145-.L136
	.long	.L145-.L136
	.long	.L135-.L136
	.long	.L145-.L136
	.long	.L145-.L136
	.long	.L145-.L136
	.long	.L145-.L136
	.long	.L145-.L136
	.long	.L145-.L136
	.long	.L145-.L136
	.long	.L135-.L136
	.text
	.p2align 4,,10
	.p2align 3
.L137:
	movl	%esi, %eax
	movq	%rdi, %rcx
	leaq	(%rax,%rax,4), %rax
	movdqu	68(%rsp,%rax,4), %xmm0
	movaps	%xmm0, 32(%rsp)
	call	KeyEventProc
.L135:
	addl	$1, %esi
	addq	$20, %rbx
	cmpl	%esi, 60(%rsp)
	ja	.L139
.L138:
	subl	$1, %ebp
	jne	.L130
	leaq	.LC10(%rip), %rax
	addq	$2632, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	ret
.L147:
	xorl	%r9d, %r9d
	leaq	.LC0(%rip), %r8
	leaq	.LC9(%rip), %rdx
.L144:
	xorl	%ecx, %ecx
	call	*__imp_MessageBoxA(%rip)
	.p2align 4,,10
	.p2align 3
.L145:
	call	*__imp_GetLastError(%rip)
	movl	%eax, %ecx
	call	*__imp_ExitProcess(%rip)
.L146:
	xorl	%r9d, %r9d
	leaq	.LC0(%rip), %r8
	leaq	.LC8(%rip), %rdx
	jmp	.L144
	.seh_endproc
	.p2align 4
	.globl	_$dll$laz_rtl$LengthByte
	.def	_$dll$laz_rtl$LengthByte;	.scl	2;	.type	32;	.endef
	.seh_proc	_$dll$laz_rtl$LengthByte
_$dll$laz_rtl$LengthByte:
.LFB6249:
	.seh_endprologue
	movl	$1, %eax
	ret
	.seh_endproc
	.p2align 4
	.globl	_$dll$laz_rtl$LengthChar
	.def	_$dll$laz_rtl$LengthChar;	.scl	2;	.type	32;	.endef
	.seh_proc	_$dll$laz_rtl$LengthChar
_$dll$laz_rtl$LengthChar:
.LFB6250:
	.seh_endprologue
	movl	$1, %eax
	ret
	.seh_endproc
	.p2align 4
	.globl	_$dll$laz_rtl$LengthInteger
	.def	_$dll$laz_rtl$LengthInteger;	.scl	2;	.type	32;	.endef
	.seh_proc	_$dll$laz_rtl$LengthInteger
_$dll$laz_rtl$LengthInteger:
.LFB6251:
	.seh_endprologue
	movl	$1, %eax
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC11:
	.ascii "info\0"
	.text
	.p2align 4
	.globl	_$dll$laz_rtl$LengthString
	.def	_$dll$laz_rtl$LengthString;	.scl	2;	.type	32;	.endef
	.seh_proc	_$dll$laz_rtl$LengthString
_$dll$laz_rtl$LengthString:
.LFB6252:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	xorl	%r9d, %r9d
	leaq	.LC11(%rip), %r8
	movzbl	(%rcx), %ebx
	movq	%rcx, %rdx
	xorl	%ecx, %ecx
	call	*__imp_MessageBoxA(%rip)
	movzbl	%bl, %eax
	addq	$32, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	_$dll$laz_rtl$LowerCase
	.def	_$dll$laz_rtl$LowerCase;	.scl	2;	.type	32;	.endef
	.seh_proc	_$dll$laz_rtl$LowerCase
_$dll$laz_rtl$LowerCase:
.LFB6253:
	.seh_endprologue
	movzbl	(%rcx), %eax
	movq	%rcx, %r8
	testb	%al, %al
	je	.L153
	movq	%rcx, %rdx
	.p2align 4,,10
	.p2align 3
.L155:
	leal	-65(%rax), %ecx
	cmpb	$25, %cl
	ja	.L154
	subl	$32, %eax
	movb	%al, (%rdx)
.L154:
	movzbl	1(%rdx), %eax
	addq	$1, %rdx
	testb	%al, %al
	jne	.L155
.L153:
	movq	%r8, %rax
	ret
	.seh_endproc
	.p2align 4
	.globl	_$dll$laz_rtl$UpperCase
	.def	_$dll$laz_rtl$UpperCase;	.scl	2;	.type	32;	.endef
	.seh_proc	_$dll$laz_rtl$UpperCase
_$dll$laz_rtl$UpperCase:
.LFB6254:
	.seh_endprologue
	movzbl	(%rcx), %eax
	movq	%rcx, %r8
	testb	%al, %al
	je	.L161
	movq	%rcx, %rdx
	.p2align 4,,10
	.p2align 3
.L163:
	leal	-97(%rax), %ecx
	cmpb	$25, %cl
	ja	.L162
	subl	$32, %eax
	movb	%al, (%rdx)
.L162:
	movzbl	1(%rdx), %eax
	addq	$1, %rdx
	testb	%al, %al
	jne	.L163
.L161:
	movq	%r8, %rax
	ret
	.seh_endproc
	.globl	LazStringImg
	.bss
	.align 32
LazStringImg:
	.space 256
	.globl	LazTerminal
	.align 32
LazTerminal:
	.space 48
	.ident	"GCC: (Rev11, Built by MSYS2 project) 10.2.0"
	.def	strlen;	.scl	2;	.type	32;	.endef
	.def	_Znay;	.scl	2;	.type	32;	.endef
	.def	_Z9LazMemCpyPvPKvy;	.scl	2;	.type	32;	.endef
