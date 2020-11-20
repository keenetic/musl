.cfi_sections .debug_frame
.set noreorder

.section .init
	.cfi_startproc
	lw $gp,24($sp)
	lw $ra,28($sp)
	jr $ra
	addu $sp,$sp,32
	.cfi_adjust_cfa_offset -32
	.cfi_endproc

.section .fini
	.cfi_startproc
	lw $gp,24($sp)
	lw $ra,28($sp)
	jr $ra
	addu $sp,$sp,32
	.cfi_adjust_cfa_offset -32
	.cfi_endproc
