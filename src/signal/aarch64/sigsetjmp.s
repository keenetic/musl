.cfi_sections .debug_frame
.global sigsetjmp
.global __sigsetjmp
.type sigsetjmp,%function
.type __sigsetjmp,%function
sigsetjmp:
__sigsetjmp:
	.cfi_startproc
	cbz x1,setjmp

	.cfi_def_cfa x0,0
	str x30,[x0,#176]
	.cfi_rel_offset x30,176
	str x19,[x0,#176+8+8]
	.cfi_rel_offset x30,176+8+8
	mov x19,x0
	.cfi_register x0,x19

	bl setjmp

	mov w1,w0
	mov x0,x19
	.cfi_register x19,x0
	.cfi_def_cfa x0,0
	ldr x30,[x0,#176]
	ldr x19,[x0,#176+8+8]
	.cfi_same_value x30
	.cfi_same_value x19

.hidden __sigsetjmp_tail
	b __sigsetjmp_tail
	.cfi_endproc
