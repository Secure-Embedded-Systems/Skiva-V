	.file	"subrot4.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_b2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	subrot4
	.type	subrot4, @function
subrot4:
	li	a4,-286330880
	slli	a5,a0,1
	addi	a4,a4,-274
	and	a5,a5,a4
	li	a4,286330880
	addi	a4,a4,273
	srli	a0,a0,3
	and	a0,a0,a4
	or	a0,a5,a0
	ret
	.size	subrot4, .-subrot4
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"result: %08x\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	li	a1,286330880
	lui	a0,%hi(.LC0)
	addi	sp,sp,-16
	addi	a1,a1,273
	addi	a0,a0,%lo(.LC0)
	sw	ra,12(sp)
	call	printf
	lw	ra,12(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
