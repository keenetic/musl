.cfi_sections .debug_frame
.section .init
	.cfi_startproc
	ldp x29,x30,[sp],#16
	ret
	.cfi_endproc

.section .fini
	.cfi_startproc
	ldp x29,x30,[sp],#16
	ret
	.cfi_endproc
