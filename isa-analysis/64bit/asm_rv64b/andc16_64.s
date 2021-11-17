	.file	"andc16_64.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_b2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	andc16_64
	.type	andc16_64, @function
andc16_64:
	lui	a4,%hi(.LC0)
	ld	a4,%lo(.LC0)(a4)
	and	a5,a0,a1
	or	a0,a0,a1
	and	a5,a5,a4
	lui	a4,%hi(.LC1)
	ld	a1,%lo(.LC1)(a4)
	and	a0,a0,a1
	or	a0,a5,a0
	ret
	.size	andc16_64, .-andc16_64
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC3:
	.string	"result: %016lx\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	lui	a5,%hi(.LC2)
	ld	a1,%lo(.LC2)(a5)
	lui	a0,%hi(.LC3)
	addi	sp,sp,-16
	addi	a0,a0,%lo(.LC3)
	sd	ra,8(sp)
	call	printf
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.dword	281470681808895
	.align	3
.LC1:
	.dword	-281470681808896
	.align	3
.LC2:
	.dword	-6067193120059878860
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
