.cfi_sections .debug_frame
.global __restore
.hidden __restore
.type __restore,%function
__restore:
.global __restore_rt
.hidden __restore_rt
.type __restore_rt,%function
__restore_rt:
	.cfi_startproc
	mov x8,#139 // SYS_rt_sigreturn
	svc 0
	.cfi_endproc
