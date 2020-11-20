.cfi_sections .debug_frame
.set noreorder
.global dlsym
.hidden __dlsym
.type dlsym,@function
dlsym:
	.cfi_startproc
	lui $gp, %hi(_gp_disp)
	addiu $gp, %lo(_gp_disp)
	addu $gp, $gp, $25
	move $6, $ra
	lw $25, %call16(__dlsym)($gp)
	addiu $sp, $sp, -16
	.cfi_adjust_cfa_offset 16
	sw $ra, 12($sp)
	.cfi_rel_offset $ra, 12
	jalr $25
	nop
	lw $ra, 12($sp)
	.cfi_restore $ra
	jr $ra
	addiu $sp, $sp, 16
	.cfi_adjust_cfa_offset -16
	.cfi_endproc
