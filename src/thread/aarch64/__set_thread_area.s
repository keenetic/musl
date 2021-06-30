.cfi_sections .debug_frame
.global __set_thread_area
.hidden __set_thread_area
.type   __set_thread_area,@function
__set_thread_area:
	.cfi_startproc
	msr tpidr_el0,x0
	mov w0,#0
	ret
	.cfi_endproc
