	.file	"ftchk10.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_b2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	ftchk10
	.type	ftchk10, @function
ftchk10:
	srli	a5,a0,16
	pack	a0,a0,x0
	xor	a5,a0,a5
	not	a0,a5
	slli	a0,a0,16
	or	a0,a0,a5
	ret
	.size	ftchk10, .-ftchk10
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"result: %08x\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	lui	a0,%hi(.LC0)
	addi	sp,sp,-16
	li	a1,-65536
	addi	a0,a0,%lo(.LC0)
	sw	ra,12(sp)
	call	printf
	lw	ra,12(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
