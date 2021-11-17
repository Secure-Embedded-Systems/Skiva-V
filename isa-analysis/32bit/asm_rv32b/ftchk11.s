	.file	"ftchk11.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_b2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	ftchk11
	.type	ftchk11, @function
ftchk11:
	li	a4,65536
	addi	a4,a4,-1
	and	a5,a0,a4
	srli	a0,a0,16
	xor	a5,a5,a0
	xor	a0,a5,a4
	slli	a5,a5,16
	or	a0,a0,a5
	ret
	.size	ftchk11, .-ftchk11
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"result: %08x\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	li	a1,65536
	lui	a0,%hi(.LC0)
	addi	sp,sp,-16
	addi	a1,a1,-1
	addi	a0,a0,%lo(.LC0)
	sw	ra,12(sp)
	call	printf
	lw	ra,12(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
