#ifndef _SGIDEFS_H
#define _SGIDEFS_H

#undef __ASM_SGIDEFS_H
#define __ASM_SGIDEFS_H

#undef _MIPS_ISA_MIPS1
#undef _MIPS_ISA_MIPS2
#undef _MIPS_ISA_MIPS3
#undef _MIPS_ISA_MIPS4
#undef _MIPS_ISA_MIPS5
#undef _MIPS_ISA_MIPS32
#undef _MIPS_ISA_MIPS64

#undef _MIPS_SIM_ABI32
#undef _MIPS_SIM_NABI32
#undef _MIPS_SIM_ABI64

#define _MIPS_ISA_MIPS1		1
#define _MIPS_ISA_MIPS2		2
#define _MIPS_ISA_MIPS3		3
#define _MIPS_ISA_MIPS4		4
#define _MIPS_ISA_MIPS5		5
#define _MIPS_ISA_MIPS32	6
#define _MIPS_ISA_MIPS64	7

#ifndef _MIPS_ABIO32
#define _MIPS_ABIO32		1
#endif
#define _MIPS_SIM_ABI32		_MIPS_ABIO32

#ifndef _MIPS_ABIN32
#define _MIPS_ABIN32		2
#endif
#define _MIPS_SIM_NABI32	_MIPS_ABIN32

#ifndef _MIPS_ABI64
#define _MIPS_ABI64		3
#endif
#define _MIPS_SIM_ABI64		_MIPS_ABI64

#endif /* _SGIDEFS_H */
