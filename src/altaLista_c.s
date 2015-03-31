	.file	"altaLista_c.c"
	.intel_syntax noprefix
# GNU C (GCC) version 4.9.2 20150304 (prerelease) (x86_64-unknown-linux-gnu)
#	compiled by GNU C version 4.9.2 20150304 (prerelease), GMP version 6.0.0, MPFR version 3.1.2-p11, MPC version 1.0.3
# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  altaLista_c.c -masm=intel -mtune=generic -march=x86-64
# -O3 -fverbose-asm
# options enabled:  -faggressive-loop-optimizations
# -fasynchronous-unwind-tables -fauto-inc-dec -fbranch-count-reg
# -fcaller-saves -fcombine-stack-adjustments -fcommon -fcompare-elim
# -fcprop-registers -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-types
# -fexpensive-optimizations -fforward-propagate -ffunction-cse -fgcse
# -fgcse-after-reload -fgcse-lm -fgnu-runtime -fgnu-unique
# -fguess-branch-probability -fhoist-adjacent-loads -fident -fif-conversion
# -fif-conversion2 -findirect-inlining -finline -finline-atomics
# -finline-functions -finline-functions-called-once
# -finline-small-functions -fipa-cp -fipa-cp-clone -fipa-profile
# -fipa-pure-const -fipa-reference -fipa-sra -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -fmath-errno -fmerge-constants
# -fmerge-debug-strings -fmove-loop-invariants -fomit-frame-pointer
# -foptimize-sibling-calls -foptimize-strlen -fpartial-inlining -fpeephole
# -fpeephole2 -fpredictive-commoning -fprefetch-loop-arrays -free
# -freg-struct-return -freorder-blocks -freorder-blocks-and-partition
# -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-insns2 -fshow-column -fshrink-wrap
# -fsigned-zeros -fsplit-ivs-in-unroller -fsplit-wide-types
# -fstrict-aliasing -fstrict-overflow -fstrict-volatile-bitfields
# -fsync-libcalls -fthread-jumps -ftoplevel-reorder -ftrapping-math
# -ftree-bit-ccp -ftree-builtin-call-dce -ftree-ccp -ftree-ch
# -ftree-coalesce-vars -ftree-copy-prop -ftree-copyrename -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-distribute-patterns -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-loop-vectorize
# -ftree-parallelize-loops= -ftree-partial-pre -ftree-phiprop -ftree-pre
# -ftree-pta -ftree-reassoc -ftree-scev-cprop -ftree-sink
# -ftree-slp-vectorize -ftree-slsr -ftree-sra -ftree-switch-conversion
# -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time -funswitch-loops
# -funwind-tables -fverbose-asm -fzero-initialized-in-bss
# -m128bit-long-double -m64 -m80387 -malign-stringops
# -mavx256-split-unaligned-load -mavx256-split-unaligned-store
# -mfancy-math-387 -mfp-ret-in-387 -mfxsr -mglibc -mieee-fp
# -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone -msse -msse2
# -mtls-direct-seg-refs -mvzeroupper

	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.globl	estudianteCrear
	.type	estudianteCrear, @function
estudianteCrear:
.LFB21:
	.cfi_startproc
	push	r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	push	r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	mov	r14, rdi	# nombre, nombre
	push	r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	push	rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	mov	edi, 20	#,
	push	rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	mov	r12, rsi	# grupo, grupo
	mov	ebp, edx	# edad, edad
	call	malloc	#
	movzx	ebx, BYTE PTR [r14]	# D.3210, *nombre_4(D)
	mov	r13, rax	# e,
	test	bl, bl	# D.3210
	je	.L2	#,
	lea	rdx, [r14+1]	# ivtmp.44,
	xor	ecx, ecx	# l
	.p2align 4,,10
	.p2align 3
.L3:
	add	rdx, 1	# ivtmp.44,
	add	ecx, 1	# l,
	cmp	BYTE PTR [rdx-1], 0	# MEM[base: _36, offset: -1B],
	jne	.L3	#,
	movzx	ecx, cl	# D.3213, l
	lea	rdi, [rcx+1]	# D.3215,
	call	malloc	#
	xor	ecx, ecx	# D.3214
	.p2align 4,,10
	.p2align 3
.L4:
	mov	BYTE PTR [rax+rcx], bl	# MEM[base: s2_75, index: _85, offset: 0B], D.3210
	add	rcx, 1	# D.3214,
	movzx	ebx, BYTE PTR [r14+rcx]	# D.3210, MEM[base: nombre_4(D), index: _88, offset: 0B]
	test	bl, bl	# D.3210
	jne	.L4	#,
.L8:
	movzx	ebx, BYTE PTR [r12]	# D.3210, *grupo_8(D)
	mov	BYTE PTR [rax+rcx], 0	# *_33,
	mov	QWORD PTR [r13+0], rax	# e_3->nombre, s2
	test	bl, bl	# D.3210
	je	.L5	#,
	lea	rcx, [r12+1]	# ivtmp.32,
	xor	edx, edx	# l
	.p2align 4,,10
	.p2align 3
.L6:
	add	rcx, 1	# ivtmp.32,
	add	edx, 1	# l,
	cmp	BYTE PTR [rcx-1], 0	# MEM[base: _99, offset: -1B],
	jne	.L6	#,
	movzx	edx, dl	# D.3213, l
	lea	rdi, [rdx+1]	# D.3215,
	call	malloc	#
	xor	ecx, ecx	# D.3214
	.p2align 4,,10
	.p2align 3
.L7:
	mov	BYTE PTR [rax+rcx], bl	# MEM[base: s2_41, index: _89, offset: 0B], D.3210
	add	rcx, 1	# D.3214,
	movzx	ebx, BYTE PTR [r12+rcx]	# D.3210, MEM[base: grupo_8(D), index: _101, offset: 0B]
	test	bl, bl	# D.3210
	jne	.L7	#,
.L9:
	mov	BYTE PTR [rax+rcx], 0	# *_52,
	mov	QWORD PTR [r13+8], rax	# e_3->grupo, s2
	mov	rax, r13	#, e
	pop	rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	mov	DWORD PTR [r13+16], ebp	# e_3->edad, edad
	pop	rbp	#
	.cfi_def_cfa_offset 32
	pop	r12	#
	.cfi_def_cfa_offset 24
	pop	r13	#
	.cfi_def_cfa_offset 16
	pop	r14	#
	.cfi_def_cfa_offset 8
	ret
.L2:
	.cfi_restore_state
	mov	edi, 1	#,
	call	malloc	#
	xor	ecx, ecx	# D.3214
	jmp	.L8	#
.L5:
	mov	edi, 1	#,
	call	malloc	#
	xor	ecx, ecx	# D.3214
	jmp	.L9	#
	.cfi_endproc
.LFE21:
	.size	estudianteCrear, .-estudianteCrear
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.globl	estudianteBorrar
	.type	estudianteBorrar, @function
estudianteBorrar:
.LFB22:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# e, e
	mov	rdi, QWORD PTR [rdi]	#, e_2(D)->nombre
	call	free	#
	mov	rdi, QWORD PTR [rbx+8]	# e_2(D)->grupo, e_2(D)->grupo
	call	free	#
	mov	rdi, rbx	#, e
	pop	rbx	#
	.cfi_def_cfa_offset 8
	jmp	free	#
	.cfi_endproc
.LFE22:
	.size	estudianteBorrar, .-estudianteBorrar
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	menorEstudiante
	.type	menorEstudiante, @function
menorEstudiante:
.LFB23:
	.cfi_startproc
	mov	rcx, QWORD PTR [rsi]	# D.3258, e2_3(D)->nombre
	mov	r8, QWORD PTR [rdi]	# D.3258, e1_5(D)->nombre
	movzx	r11d, BYTE PTR [rcx]	# D.3260, *_4
	movzx	r9d, BYTE PTR [r8]	# D.3260, *_6
	cmp	r9b, r11b	# D.3260, D.3260
	jne	.L20	#,
	test	r9b, r9b	# D.3260
	je	.L35	#,
	xor	eax, eax	# ivtmp.65
	jmp	.L22	#
	.p2align 4,,10
	.p2align 3
.L23:
	add	rax, 1	# ivtmp.65,
	test	dl, dl	# D.3260
	je	.L21	#,
.L22:
	movzx	edx, BYTE PTR [r8+1+rax]	# D.3260, MEM[base: _6, index: ivtmp.65_72, offset: 1B]
	movzx	r10d, BYTE PTR [rcx+1+rax]	# D.3260, MEM[base: _4, index: ivtmp.65_72, offset: 1B]
	cmp	dl, r10b	# D.3260, D.3260
	je	.L23	#,
	xor	eax, eax	# ivtmp.51
	test	dl, dl	# D.3260
	je	.L67	#,
	.p2align 4,,10
	.p2align 3
.L32:
	movzx	edx, BYTE PTR [r8+1+rax]	# D.3260, MEM[base: _6, index: ivtmp.58_70, offset: 1B]
	add	rax, 1	# ivtmp.58,
	movzx	r10d, BYTE PTR [rcx+rax]	# D.3260, MEM[base: _4, index: ivtmp.58_14, offset: 0B]
	cmp	dl, r10b	# D.3260, D.3260
	je	.L32	#,
	cmp	r10b, dl	# D.3260, D.3260
	mov	eax, 1	# D.3257,
	jg	.L55	#,
.L21:
	test	r9b, r9b	# D.3260
	je	.L35	#,
	test	r11b, r11b	# D.3260
	je	.L42	#,
	xor	eax, eax	# ivtmp.51
	jmp	.L28	#
	.p2align 4,,10
	.p2align 3
.L34:
	add	rax, 1	# ivtmp.51,
	test	r9b, r9b	# D.3260
	je	.L45	#,
.L28:
	movzx	r9d, BYTE PTR [r8+1+rax]	# D.3260, MEM[base: _6, index: ivtmp.51_57, offset: 1B]
	movzx	r11d, BYTE PTR [rcx+1+rax]	# D.3260, MEM[base: _4, index: ivtmp.51_57, offset: 1B]
	cmp	r9b, r11b	# D.3260, D.3260
	je	.L34	#,
.L37:
	xor	eax, eax	# D.3257
	test	r9b, r9b	# D.3260
	je	.L35	#,
.L55:
	rep ret
.L20:
	test	r9b, r9b	# D.3260
	je	.L68	#,
.L26:
	cmp	r9b, r11b	# D.3260, D.3260
	mov	eax, 1	# D.3257,
	jge	.L37	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L68:
	test	r11b, r11b	# D.3260
	jne	.L26	#,
.L45:
	mov	eax, DWORD PTR [rsi+16]	# tmp103, e2_3(D)->edad
	cmp	DWORD PTR [rdi+16], eax	# e1_5(D)->edad, tmp103
	setbe	al	#, D.3257
	ret
.L67:
	test	r10b, r10b	# D.3260
	jne	.L32	#,
	jmp	.L28	#
	.p2align 4,,10
	.p2align 3
.L35:
	test	r11b, r11b	# D.3260
	je	.L45	#,
.L42:
	xor	eax, eax	# D.3257
	ret
	.cfi_endproc
.LFE23:
	.size	menorEstudiante, .-menorEstudiante
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	estudianteConFormato
	.type	estudianteConFormato, @function
estudianteConFormato:
.LFB24:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbp, rdi	# e, e
	mov	rbx, rsi	# f, f
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	mov	rdi, QWORD PTR [rdi]	#, e_2(D)->nombre
	call	rsi	# f
	mov	rdi, QWORD PTR [rbp+8]	# e_2(D)->grupo, e_2(D)->grupo
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	mov	rax, rbx	# f, f
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	jmp	rax	# f
	.cfi_endproc
.LFE24:
	.size	estudianteConFormato, .-estudianteConFormato
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"%s\n\t%s\n\t%d\n"
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	estudianteImprimir
	.type	estudianteImprimir, @function
estudianteImprimir:
.LFB25:
	.cfi_startproc
	mov	rcx, QWORD PTR [rdi+8]	# e_2(D)->grupo, e_2(D)->grupo
	mov	r8d, DWORD PTR [rdi+16]	#, e_2(D)->edad
	mov	rax, rsi	# file, file
	mov	rdx, QWORD PTR [rdi]	#, e_2(D)->nombre
	mov	esi, OFFSET FLAT:.LC4	#,
	mov	rdi, rax	#, file
	xor	eax, eax	#
	jmp	fprintf	#
	.cfi_endproc
.LFE25:
	.size	estudianteImprimir, .-estudianteImprimir
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	nodoCrear
	.type	nodoCrear, @function
nodoCrear:
.LFB26:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# dato, dato
	mov	edi, 24	#,
	call	malloc	#
	mov	QWORD PTR [rax+8], 0	# n_3->anterior,
	mov	QWORD PTR [rax], 0	# n_3->siguiente,
	mov	QWORD PTR [rax+16], rbx	# n_3->dato, dato
	pop	rbx	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE26:
	.size	nodoCrear, .-nodoCrear
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB7:
	.text
.LHOTB7:
	.p2align 4,,15
	.globl	nodoBorrar
	.type	nodoBorrar, @function
nodoBorrar:
.LFB27:
	.cfi_startproc
	push	rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	mov	rbx, rdi	# n, n
	mov	rdi, QWORD PTR [rdi+16]	# n_2(D)->dato, n_2(D)->dato
	call	rsi	# f
	mov	rdi, rbx	#, n
	pop	rbx	#
	.cfi_def_cfa_offset 8
	jmp	free	#
	.cfi_endproc
.LFE27:
	.size	nodoBorrar, .-nodoBorrar
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.globl	altaListaCrear
	.type	altaListaCrear, @function
altaListaCrear:
.LFB28:
	.cfi_startproc
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 16
	mov	edi, 16	#,
	call	malloc	#
	mov	QWORD PTR [rax], 0	# lista_3->primero,
	mov	QWORD PTR [rax+8], 0	# lista_3->ultimo,
	add	rsp, 8	#,
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE28:
	.size	altaListaCrear, .-altaListaCrear
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4,,15
	.globl	altaListaBorrar
	.type	altaListaBorrar, @function
altaListaBorrar:
.LFB29:
	.cfi_startproc
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	mov	r13, rdi	# l, l
	push	rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	push	rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	mov	r12, rsi	# f, f
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 48
	mov	rbx, QWORD PTR [rdi]	# nodoActual, l_4(D)->primero
	test	rbx, rbx	# nodoActual
	je	.L81	#,
	.p2align 4,,10
	.p2align 3
.L82:
	mov	rbp, QWORD PTR [rbx]	# nodoActual, nodoActual_14->siguiente
	mov	rdi, QWORD PTR [rbx+16]	# nodoActual_14->dato, nodoActual_14->dato
	call	r12	# f
	mov	rdi, rbx	#, nodoActual
	call	free	#
	test	rbp, rbp	# nodoActual
	mov	rbx, rbp	# nodoActual, nodoActual
	jne	.L82	#,
.L81:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 40
	mov	rdi, r13	#, l
	pop	rbx	#
	.cfi_def_cfa_offset 32
	pop	rbp	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	jmp	free	#
	.cfi_endproc
.LFE29:
	.size	altaListaBorrar, .-altaListaBorrar
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.section	.rodata.str1.1
.LC10:
	.string	"a"
.LC11:
	.string	"<vacia>\n"
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	altaListaImprimir
	.type	altaListaImprimir, @function
altaListaImprimir:
.LFB30:
	.cfi_startproc
	push	r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	push	rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	mov	r12, rdx	# f, f
	push	rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	mov	rbx, rdi	# l, l
	mov	rdi, rsi	# archivo, archivo
	mov	esi, OFFSET FLAT:.LC10	#,
	call	fopen	#
	mov	rbx, QWORD PTR [rbx]	# nodoActual, l_7(D)->primero
	mov	rbp, rax	# file,
	test	rbx, rbx	# nodoActual
	je	.L92	#,
	.p2align 4,,10
	.p2align 3
.L89:
	mov	rdi, QWORD PTR [rbx+16]	# nodoActual_19->dato, nodoActual_19->dato
	mov	rsi, rbp	#, file
	call	r12	# f
	mov	rbx, QWORD PTR [rbx]	# nodoActual, nodoActual_19->siguiente
	test	rbx, rbx	# nodoActual
	jne	.L89	#,
.L87:
	pop	rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	mov	rdi, rbp	#, file
	pop	rbp	#
	.cfi_def_cfa_offset 16
	pop	r12	#
	.cfi_def_cfa_offset 8
	jmp	fclose	#
.L92:
	.cfi_restore_state
	mov	rcx, rax	#, file
	mov	edx, 8	#,
	mov	esi, 1	#,
	mov	edi, OFFSET FLAT:.LC11	#,
	call	fwrite	#
	jmp	.L87	#
	.cfi_endproc
.LFE30:
	.size	altaListaImprimir, .-altaListaImprimir
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	edadMedia
	.type	edadMedia, @function
edadMedia:
.LFB31:
	.cfi_startproc
	mov	rax, QWORD PTR [rdi]	# nodoActual, l_5(D)->primero
	test	rax, rax	# nodoActual
	je	.L96	#,
	xor	ecx, ecx	# largo
	xor	edx, edx	# suma
	.p2align 4,,10
	.p2align 3
.L95:
	mov	rsi, QWORD PTR [rax+16]	# nodoActual_24->dato, nodoActual_24->dato
	mov	rax, QWORD PTR [rax]	# nodoActual, nodoActual_24->siguiente
	add	ecx, 1	# largo,
	add	edx, DWORD PTR [rsi+16]	# suma, MEM[(struct estudiante *)_7].edad
	test	rax, rax	# nodoActual
	jne	.L95	#,
	pxor	xmm0, xmm0	# D.3295
	pxor	xmm1, xmm1	# D.3295
	cvtsi2ss	xmm0, edx	# D.3295, suma
	cvtsi2ss	xmm1, ecx	# D.3295, largo
.L94:
	divss	xmm0, xmm1	# D.3295, D.3295
	ret
.L96:
	pxor	xmm1, xmm1	# D.3295
	movaps	xmm0, xmm1	# D.3295, D.3295
	jmp	.L94	#
	.cfi_endproc
.LFE31:
	.size	edadMedia, .-edadMedia
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.text.unlikely
.LCOLDB15:
	.text
.LHOTB15:
	.p2align 4,,15
	.globl	insertarOrdenado
	.type	insertarOrdenado, @function
insertarOrdenado:
.LFB32:
	.cfi_startproc
	push	r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	push	r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	mov	r13, rdi	# l, l
	push	rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	push	rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	mov	rbp, rsi	# dato, dato
	mov	r12, rdx	# f, f
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 48
	mov	rbx, QWORD PTR [rdi]	# nodoActual, l_6(D)->primero
	test	rbx, rbx	# nodoActual
	jne	.L110	#,
	jmp	.L100	#
	.p2align 4,,10
	.p2align 3
.L112:
	mov	rbx, QWORD PTR [rbx]	# nodoActual, nodoActual_41->siguiente
	test	rbx, rbx	# nodoActual
	je	.L100	#,
.L110:
	mov	rsi, QWORD PTR [rbx+16]	# nodoActual_41->dato, nodoActual_41->dato
	mov	rdi, rbp	#, dato
	call	r12	# f
	test	al, al	# D.3307
	je	.L112	#,
	mov	edi, 24	#,
	call	malloc	#
	mov	QWORD PTR [rax+8], 0	# nuevo_23->anterior,
	mov	rdx, QWORD PTR [rbx+8]	# nodoAnterior, nodoActual_1->anterior
	mov	QWORD PTR [rax+16], rbp	# nuevo_23->dato, dato
	mov	QWORD PTR [rax], rbx	# nuevo_23->siguiente, nodoActual
	test	rdx, rdx	# nodoAnterior
	je	.L119	#,
	mov	QWORD PTR [rax+8], rdx	# nuevo_23->anterior, nodoAnterior
	mov	QWORD PTR [rdx], rax	# nodoAnterior_17->siguiente, tmp95
	mov	QWORD PTR [rbx+8], rax	# nodoActual_1->anterior, tmp95
.L98:
	add	rsp, 8	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	pop	rbx	#
	.cfi_def_cfa_offset 32
	pop	rbp	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L100:
	.cfi_restore_state
	mov	edi, 24	#,
	call	malloc	#
	mov	rdx, QWORD PTR [r13+8]	# ultimoNodo, l_6(D)->ultimo
	mov	QWORD PTR [rax+8], 0	# nuevoNodo_27->anterior,
	mov	QWORD PTR [rax], 0	# nuevoNodo_27->siguiente,
	mov	QWORD PTR [rax+16], rbp	# nuevoNodo_27->dato, dato
	test	rdx, rdx	# ultimoNodo
	je	.L120	#,
	mov	QWORD PTR [rdx], rax	# ultimoNodo_28->siguiente, nuevoNodo
.L104:
	mov	QWORD PTR [rax+8], rdx	# nuevoNodo_27->anterior, ultimoNodo
	mov	QWORD PTR [r13+8], rax	# l_6(D)->ultimo, nuevoNodo
	add	rsp, 8	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	pop	rbx	#
	.cfi_def_cfa_offset 32
	pop	rbp	#
	.cfi_def_cfa_offset 24
	pop	r12	#
	.cfi_def_cfa_offset 16
	pop	r13	#
	.cfi_def_cfa_offset 8
	ret
.L119:
	.cfi_restore_state
	mov	QWORD PTR [r13+0], rax	# l_6(D)->primero, tmp95
	mov	QWORD PTR [rbx+8], rax	# nodoActual_1->anterior, tmp95
	jmp	.L98	#
.L120:
	mov	QWORD PTR [r13+0], rax	# l_6(D)->primero, nuevoNodo
	jmp	.L104	#
	.cfi_endproc
.LFE32:
	.size	insertarOrdenado, .-insertarOrdenado
	.section	.text.unlikely
.LCOLDE15:
	.text
.LHOTE15:
	.section	.text.unlikely
.LCOLDB16:
	.text
.LHOTB16:
	.p2align 4,,15
	.globl	filtrarAltaLista
	.type	filtrarAltaLista, @function
filtrarAltaLista:
.LFB33:
	.cfi_startproc
	push	r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	push	r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	mov	r15, rdi	# l, l
	push	r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	push	r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	mov	r14, rsi	# f, f
	push	rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	push	rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	mov	r13, rdx	# datoCmp, datoCmp
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 64
	mov	rbx, QWORD PTR [rdi]	# nodoActual, l_5(D)->primero
	test	rbx, rbx	# nodoActual
	je	.L121	#,
	.p2align 4,,10
	.p2align 3
.L135:
	mov	rbp, QWORD PTR [rbx]	# nodoActual, nodoActual_60->siguiente
	mov	r12, QWORD PTR [rbx+8]	# nodoAnterior, nodoActual_60->anterior
	mov	rsi, r13	#, datoCmp
	mov	rdi, QWORD PTR [rbx+16]	# nodoActual_60->dato, nodoActual_60->dato
	call	r14	# f
	test	al, al	# D.3315
	jne	.L125	#,
	test	r12, r12	# nodoAnterior
	sete	al	#, tmp107
	test	rbp, rbp	# nodoActual
	jne	.L126	#,
	test	al, al	# tmp107
	jne	.L141	#,
	mov	QWORD PTR [r15+8], r12	# l_5(D)->ultimo, nodoAnterior
	mov	QWORD PTR [r12], 0	# nodoAnterior_3->siguiente,
.L140:
	mov	rbp, QWORD PTR [rbx+16]	# D.3314,
	mov	rdi, QWORD PTR [rbp+0]	#,* D.3314
	call	free	#
	mov	rdi, QWORD PTR [rbp+8]	# MEM[(struct estudiante *)_22].grupo,
	call	free	#
	mov	rdi, rbp	#, D.3314
	call	free	#
	add	rsp, 8	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	mov	rdi, rbx	#, nodoActual
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	jmp	free	#
	.p2align 4,,10
	.p2align 3
.L125:
	.cfi_restore_state
	test	rbp, rbp	# nodoActual
	je	.L121	#,
.L130:
	mov	rbx, rbp	# nodoActual, nodoActual
	jmp	.L135	#
	.p2align 4,,10
	.p2align 3
.L126:
	test	al, al	# tmp107
	jne	.L142	#,
	mov	QWORD PTR [r12], rbp	# nodoAnterior_8->siguiente, nodoActual
	mov	QWORD PTR [rbp+8], r12	# nodoActual_7->anterior, nodoAnterior
.L139:
	mov	r12, QWORD PTR [rbx+16]	# D.3314, nodoActual_60->dato
	mov	rdi, QWORD PTR [r12]	#,* D.3314
	call	free	#
	mov	rdi, QWORD PTR [r12+8]	# MEM[(struct estudiante *)_25].grupo,
	call	free	#
	mov	rdi, r12	#, D.3314
	call	free	#
	mov	rdi, rbx	#, nodoActual
	call	free	#
	jmp	.L130	#
	.p2align 4,,10
	.p2align 3
.L141:
	mov	QWORD PTR [r15], 0	# l_5(D)->primero,
	mov	QWORD PTR [r15+8], 0	# l_5(D)->ultimo,
	jmp	.L140	#
	.p2align 4,,10
	.p2align 3
.L142:
	mov	QWORD PTR [r15], rbp	# l_5(D)->primero, nodoActual
	mov	QWORD PTR [rbp+8], 0	# nodoActual_7->anterior,
	jmp	.L139	#
.L121:
	add	rsp, 8	#,
	.cfi_def_cfa_offset 56
	pop	rbx	#
	.cfi_def_cfa_offset 48
	pop	rbp	#
	.cfi_def_cfa_offset 40
	pop	r12	#
	.cfi_def_cfa_offset 32
	pop	r13	#
	.cfi_def_cfa_offset 24
	pop	r14	#
	.cfi_def_cfa_offset 16
	pop	r15	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	filtrarAltaLista, .-filtrarAltaLista
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.text.unlikely
.LCOLDB17:
	.text
.LHOTB17:
	.p2align 4,,15
	.globl	string_longitud
	.type	string_longitud, @function
string_longitud:
.LFB34:
	.cfi_startproc
	cmp	BYTE PTR [rdi], 0	# *s_4(D),
	je	.L146	#,
	add	rdi, 1	# ivtmp.99,
	xor	eax, eax	# l
	.p2align 4,,10
	.p2align 3
.L145:
	add	rdi, 1	# ivtmp.99,
	add	eax, 1	# l,
	cmp	BYTE PTR [rdi-1], 0	# MEM[base: _14, offset: -1B],
	jne	.L145	#,
	rep ret
.L146:
	xor	eax, eax	# D.3325
	ret
	.cfi_endproc
.LFE34:
	.size	string_longitud, .-string_longitud
	.section	.text.unlikely
.LCOLDE17:
	.text
.LHOTE17:
	.section	.text.unlikely
.LCOLDB18:
	.text
.LHOTB18:
	.p2align 4,,15
	.globl	string_copiar
	.type	string_copiar, @function
string_copiar:
.LFB35:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbp, rdi	# s, s
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	movzx	ebx, BYTE PTR [rdi]	# D.3345, *s_4(D)
	test	bl, bl	# D.3345
	je	.L149	#,
	lea	rax, [rdi+1]	# ivtmp.113,
	xor	edx, edx	# l
	.p2align 4,,10
	.p2align 3
.L150:
	add	rax, 1	# ivtmp.113,
	add	edx, 1	# l,
	cmp	BYTE PTR [rax-1], 0	# MEM[base: _45, offset: -1B],
	jne	.L150	#,
	movzx	edx, dl	# D.3346, l
	lea	rdi, [rdx+1]	# D.3349,
	call	malloc	#
	xor	edx, edx	# D.3347
	.p2align 4,,10
	.p2align 3
.L151:
	mov	BYTE PTR [rax+rdx], bl	# MEM[base: s2_5, index: _41, offset: 0B], D.3345
	add	rdx, 1	# D.3347,
	movzx	ebx, BYTE PTR [rbp+0+rdx]	# D.3345, MEM[base: s_4(D), index: _47, offset: 0B]
	test	bl, bl	# D.3345
	jne	.L151	#,
.L152:
	mov	BYTE PTR [rax+rdx], 0	# *_17,
	add	rsp, 8	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
.L149:
	.cfi_restore_state
	mov	edi, 1	#,
	call	malloc	#
	xor	edx, edx	# D.3347
	jmp	.L152	#
	.cfi_endproc
.LFE35:
	.size	string_copiar, .-string_copiar
	.section	.text.unlikely
.LCOLDE18:
	.text
.LHOTE18:
	.section	.text.unlikely
.LCOLDB19:
	.text
.LHOTB19:
	.p2align 4,,15
	.globl	string_menor
	.type	string_menor, @function
string_menor:
.LFB36:
	.cfi_startproc
	movzx	edx, BYTE PTR [rdi]	# D.3373, *s1_3(D)
	movzx	ecx, BYTE PTR [rsi]	# D.3373, *s2_4(D)
	cmp	dl, cl	# D.3373, D.3373
	jne	.L158	#,
	test	dl, dl	# D.3373
	je	.L169	#,
	xor	eax, eax	# ivtmp.125
	jmp	.L160	#
	.p2align 4,,10
	.p2align 3
.L161:
	add	rax, 1	# ivtmp.125,
	test	dl, dl	# D.3373
	je	.L169	#,
.L160:
	movzx	edx, BYTE PTR [rdi+1+rax]	# D.3373, MEM[base: s1_3(D), index: ivtmp.125_45, offset: 1B]
	movzx	ecx, BYTE PTR [rsi+1+rax]	# D.3373, MEM[base: s2_4(D), index: ivtmp.125_45, offset: 1B]
	cmp	dl, cl	# D.3373, D.3373
	je	.L161	#,
	test	dl, dl	# D.3373
	je	.L181	#,
.L177:
	xor	eax, eax	# ivtmp.118
	.p2align 4,,10
	.p2align 3
.L164:
	movzx	edx, BYTE PTR [rdi+1+rax]	# D.3373, MEM[base: s1_3(D), index: ivtmp.118_39, offset: 1B]
	add	rax, 1	# ivtmp.118,
	movzx	ecx, BYTE PTR [rsi+rax]	# D.3373, MEM[base: s2_4(D), index: ivtmp.118_51, offset: 0B]
	cmp	dl, cl	# D.3373, D.3373
	je	.L164	#,
.L163:
	cmp	dl, cl	# D.3373, D.3373
	setl	al	#, D.3372
	ret
	.p2align 4,,10
	.p2align 3
.L169:
	xor	eax, eax	# D.3372
	ret
.L181:
	xor	eax, eax	# D.3372
	test	cl, cl	# D.3373
	jne	.L177	#,
	rep ret
.L158:
	test	dl, dl	# D.3373
	jne	.L163	#,
	xor	eax, eax	# D.3372
	test	cl, cl	# D.3373
	jne	.L163	#,
	rep ret
	.cfi_endproc
.LFE36:
	.size	string_menor, .-string_menor
	.section	.text.unlikely
.LCOLDE19:
	.text
.LHOTE19:
	.section	.text.unlikely
.LCOLDB20:
	.text
.LHOTB20:
	.p2align 4,,15
	.globl	string_iguales
	.type	string_iguales, @function
string_iguales:
.LFB37:
	.cfi_startproc
	movzx	edx, BYTE PTR [rdi]	# D.3384, *s1_4(D)
	movzx	ecx, BYTE PTR [rsi]	# D.3384, *s2_8(D)
	cmp	dl, cl	# D.3384, D.3384
	jne	.L183	#,
	test	dl, dl	# D.3384
	je	.L188	#,
	xor	eax, eax	# ivtmp.134
	jmp	.L185	#
	.p2align 4,,10
	.p2align 3
.L186:
	add	rax, 1	# ivtmp.134,
	test	dl, dl	# D.3384
	je	.L188	#,
.L185:
	movzx	edx, BYTE PTR [rdi+1+rax]	# D.3384, MEM[base: s1_4(D), index: ivtmp.134_22, offset: 1B]
	movzx	ecx, BYTE PTR [rsi+1+rax]	# D.3384, MEM[base: s2_8(D), index: ivtmp.134_22, offset: 1B]
	cmp	dl, cl	# D.3384, D.3384
	je	.L186	#,
.L183:
	xor	eax, eax	# D.3383
	test	dl, dl	# D.3384
	je	.L190	#,
	rep ret
	.p2align 4,,10
	.p2align 3
.L188:
	mov	eax, 1	# D.3383,
	ret
	.p2align 4,,10
	.p2align 3
.L190:
	test	cl, cl	# D.3384
	sete	al	#, D.3383
	ret
	.cfi_endproc
.LFE37:
	.size	string_iguales, .-string_iguales
	.section	.text.unlikely
.LCOLDE20:
	.text
.LHOTE20:
	.section	.text.unlikely
.LCOLDB21:
	.text
.LHOTB21:
	.p2align 4,,15
	.globl	insertarAtras
	.type	insertarAtras, @function
insertarAtras:
.LFB38:
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	push	rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	mov	rbx, rdi	# l, l
	mov	edi, 24	#,
	mov	rbp, rsi	# dato, dato
	sub	rsp, 8	#,
	.cfi_def_cfa_offset 32
	call	malloc	#
	mov	rdx, QWORD PTR [rbx+8]	# ultimoNodo, l_5(D)->ultimo
	mov	QWORD PTR [rax+8], 0	# nuevoNodo_11->anterior,
	mov	QWORD PTR [rax], 0	# nuevoNodo_11->siguiente,
	mov	QWORD PTR [rax+16], rbp	# nuevoNodo_11->dato, dato
	test	rdx, rdx	# ultimoNodo
	je	.L195	#,
	mov	QWORD PTR [rdx], rax	# ultimoNodo_6->siguiente, nuevoNodo
	mov	QWORD PTR [rax+8], rdx	# nuevoNodo_11->anterior, ultimoNodo
	mov	QWORD PTR [rbx+8], rax	# l_5(D)->ultimo, nuevoNodo
	add	rsp, 8	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L195:
	.cfi_restore_state
	mov	QWORD PTR [rax+8], rdx	# nuevoNodo_11->anterior, ultimoNodo
	mov	QWORD PTR [rbx], rax	# l_5(D)->primero, nuevoNodo
	mov	QWORD PTR [rbx+8], rax	# l_5(D)->ultimo, nuevoNodo
	add	rsp, 8	#,
	.cfi_def_cfa_offset 24
	pop	rbx	#
	.cfi_def_cfa_offset 16
	pop	rbp	#
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	insertarAtras, .-insertarAtras
	.section	.text.unlikely
.LCOLDE21:
	.text
.LHOTE21:
	.ident	"GCC: (GNU) 4.9.2 20150304 (prerelease)"
	.section	.note.GNU-stack,"",@progbits
