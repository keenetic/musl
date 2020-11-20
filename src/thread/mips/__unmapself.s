.cfi_sections .debug_frame
.set noreorder
.global __unmapself
.type   __unmapself,@function
__unmapself:
	.cfi_startproc
	move $sp, $25
	.cfi_undefined $sp
	.cfi_def_cfa_offset 0
	li $2, 4091
	syscall
	li $4, 0
	li $2, 4001
	syscall
	.cfi_endproc
