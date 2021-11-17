	.file	"xorc8_64.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_b2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	xorc8_64
	.type	xorc8_64, @function
xorc8_64:
	lui	a5,%hi(.LC0)
	ld	a5,%lo(.LC0)(a5)
	xor	a0,a0,a1
	xor	a0,a0,a5
	ret
	.size	xorc8_64, .-xorc8_64
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC2:
	.string	"result: %016lx\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	lui	a5,%hi(.LC1)
	ld	a1,%lo(.LC1)(a5)
	lui	a0,%hi(.LC2)
	addi	sp,sp,-16
	addi	a0,a0,%lo(.LC2)
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
	.dword	-71777214294589696
	.align	3
.LC1:
	.dword	6110557940251623168
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
