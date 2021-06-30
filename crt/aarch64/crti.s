.cfi_sections .debug_frame
.section .init
.global _init
.type _init,%function
.align 2
_init:
	.cfi_startproc
	stp x29,x30,[sp,-16]!
	mov x29,sp
	.cfi_endproc

.section .fini
.global _fini
.type _fini,%function
.align 2
_fini:
	.cfi_startproc
	stp x29,x30,[sp,-16]!
	mov x29,sp
	.cfi_endproc
