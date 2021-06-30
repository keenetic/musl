.cfi_sections .debug_frame
.global __unmapself
.type   __unmapself,%function
__unmapself:
	.cfi_startproc
	mov x8,#215 // SYS_munmap
	svc 0
	mov x8,#93 // SYS_exit
	svc 0
	.cfi_endproc
