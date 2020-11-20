.cfi_sections .debug_frame
.set noreorder

.section .init
.global _init
.type _init,@function
.align 2
_init:
	.cfi_startproc
	subu $sp,$sp,32
	.cfi_adjust_cfa_offset 32
	sw $gp,24($sp)
	.cfi_rel_offset $gp, 24
	sw $ra,28($sp)
	.cfi_rel_offset $ra, 28
	.cfi_endproc

.section .fini
.global _fini
.type _fini,@function
.align 2
_fini:
	.cfi_startproc
	subu $sp,$sp,32
	.cfi_adjust_cfa_offset 32
	sw $gp,24($sp)
	.cfi_rel_offset $gp, 24
	sw $ra,28($sp)
	.cfi_rel_offset $ra, 28
	.cfi_endproc
