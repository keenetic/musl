.cfi_sections .debug_frame
.global dlsym
.hidden __dlsym
.type dlsym,%function
dlsym:
	.cfi_startproc
	mov x2,x30
	b __dlsym
	.cfi_endproc
