	.file	"andc8.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_b2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	andc8
	.type	andc8, @function
andc8:
	and	a4,a0,a1
	or	a1,a0,a1
	li	a0,65536
	addi	a0,a0,-256
	and	a0,a1,a0
	andi	a5,a4,255
	or	a5,a5,a0
	li	a0,16711680
	and	a4,a4,a0
	li	a0,-16777216
	or	a5,a5,a4
	and	a0,a1,a0
	or	a0,a5,a0
	ret
	.size	andc8, .-andc8
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"result: %08x\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	li	a1,-1358950400
	lui	a0,%hi(.LC0)
	addi	sp,sp,-16
	addi	a1,a1,564
	addi	a0,a0,%lo(.LC0)
	sw	ra,12(sp)
	call	printf
	lw	ra,12(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
