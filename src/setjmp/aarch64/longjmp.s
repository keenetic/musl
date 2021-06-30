.cfi_sections .debug_frame
.global _longjmp
.global longjmp
.type _longjmp,%function
.type longjmp,%function
_longjmp:
longjmp:
	// IHI0055B_aapcs64.pdf 5.1.1, 5.1.2 callee saved registers
	.cfi_startproc
	.cfi_def_cfa x0, 0
	.cfi_offset x19, 0
	.cfi_offset x20, 8
	.cfi_offset x21, 16
	.cfi_offset x22, 24
	.cfi_offset x23, 32
	.cfi_offset x24, 40
	.cfi_offset x25, 48
	.cfi_offset x26, 56
	.cfi_offset x27, 64
	.cfi_offset x28, 72
	.cfi_offset x29, 80
	.cfi_offset x30, 88

	.cfi_offset d8, 112
	.cfi_offset d9, 120
	.cfi_offset d10, 128
	.cfi_offset d11, 136
	.cfi_offset d12, 144
	.cfi_offset d13, 152
	.cfi_offset d14, 160
	.cfi_offset d15, 168

	ldp x19, x20, [x0,#0]
	ldp x21, x22, [x0,#16]
	ldp x23, x24, [x0,#32]
	ldp x25, x26, [x0,#48]
	ldp x27, x28, [x0,#64]
	ldp x29, x30, [x0,#80]
	ldr x2, [x0,#104]
	mov sp, x2
	ldp d8 , d9, [x0,#112]
	ldp d10, d11, [x0,#128]
	ldp d12, d13, [x0,#144]
	ldp d14, d15, [x0,#160]

	.cfi_same_value x19
	.cfi_same_value x20
	.cfi_same_value x21
	.cfi_same_value x22
	.cfi_same_value x23
	.cfi_same_value x24
	.cfi_same_value x25
	.cfi_same_value x26
	.cfi_same_value x27
	.cfi_same_value x28
	.cfi_same_value x29
	.cfi_same_value x30

	.cfi_same_value d8
	.cfi_same_value d9
	.cfi_same_value d10
	.cfi_same_value d11
	.cfi_same_value d12
	.cfi_same_value d13
	.cfi_same_value d14
	.cfi_same_value d15

	cmp w1, 0
	csinc w0, w1, wzr, ne
	br x30
	.cfi_endproc
