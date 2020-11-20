.cfi_sections .debug_frame
.set noreorder

.global __restore_rt
.hidden __restore_rt
.type   __restore_rt,@function
__restore_rt:
	.cfi_startproc
	li $2, 4193
	syscall
	.cfi_endproc

.global __restore
.hidden __restore
.type   __restore,@function
__restore:
	.cfi_startproc
	li $2, 4119
	syscall
	.cfi_endproc
