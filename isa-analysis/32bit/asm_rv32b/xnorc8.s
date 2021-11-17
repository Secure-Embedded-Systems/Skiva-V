	.file	"xnorc8.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_b2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	xnorc8
	.type	xnorc8, @function
xnorc8:
	xor	a1,a0,a1
	li	a4,16711680
	pack	a5,a1,x0
	li	a0,-16777216
	xori	a5,a5,255
	and	a0,a1,a0
	andn	a1,a4,a1
	or	a1,a5,a1
	or	a0,a1,a0
	ret
	.size	xnorc8, .-xnorc8
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"result: %08x\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	li	a1,-1344536576
	lui	a0,%hi(.LC0)
	addi	sp,sp,-16
	addi	a1,a1,255
	addi	a0,a0,%lo(.LC0)
	sw	ra,12(sp)
	call	printf
	lw	ra,12(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
