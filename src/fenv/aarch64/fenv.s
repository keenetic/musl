.cfi_sections .debug_frame
.global fegetround
.type fegetround,%function
fegetround:
	.cfi_startproc
	mrs x0, fpcr
	and w0, w0, #0xc00000
	ret
	.cfi_endproc

.global __fesetround
.hidden __fesetround
.type __fesetround,%function
__fesetround:
	.cfi_startproc
	mrs x1, fpcr
	bic w1, w1, #0xc00000
	orr w1, w1, w0
	msr fpcr, x1
	mov w0, #0
	ret
	.cfi_endproc

.global fetestexcept
.type fetestexcept,%function
fetestexcept:
	.cfi_startproc
	and w0, w0, #0x1f
	mrs x1, fpsr
	and w0, w0, w1
	ret
	.cfi_endproc

.global feclearexcept
.type feclearexcept,%function
feclearexcept:
	.cfi_startproc
	and w0, w0, #0x1f
	mrs x1, fpsr
	bic w1, w1, w0
	msr fpsr, x1
	mov w0, #0
	ret
	.cfi_endproc

.global feraiseexcept
.type feraiseexcept,%function
feraiseexcept:
	.cfi_startproc
	and w0, w0, #0x1f
	mrs x1, fpsr
	orr w1, w1, w0
	msr fpsr, x1
	mov w0, #0
	ret
	.cfi_endproc

.global fegetenv
.type fegetenv,%function
fegetenv:
	.cfi_startproc
	mrs x1, fpcr
	mrs x2, fpsr
	stp w1, w2, [x0]
	mov w0, #0
	ret
	.cfi_endproc

// TODO preserve some bits
.global fesetenv
.type fesetenv,%function
fesetenv:
	.cfi_startproc
	mov x1, #0
	mov x2, #0
	cmn x0, #1
	b.eq 1f
	ldp w1, w2, [x0]
1:	msr fpcr, x1
	msr fpsr, x2
	mov w0, #0
	ret
	.cfi_endproc
