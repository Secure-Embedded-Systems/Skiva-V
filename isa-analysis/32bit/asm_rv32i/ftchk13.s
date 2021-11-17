	.file	"ftchk13.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	ftchk13
	.type	ftchk13, @function
ftchk13:
	srli	a5,a0,8
	xor	a5,a5,a0
	srli	a3,a0,16
	xor	a3,a3,a0
	andi	a4,a0,255
	not	a5,a5
	srli	a0,a0,24
	or	a5,a5,a3
	xor	a0,a4,a0
	xori	a0,a0,255
	andi	a5,a5,255
	or	a5,a5,a0
	xori	a4,a5,255
	slli	a0,a5,16
	or	a5,a0,a5
	slli	a0,a4,8
	or	a5,a5,a0
	slli	a0,a4,24
	or	a0,a5,a0
	ret
	.size	ftchk13, .-ftchk13
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"result: %08x\n"
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
	li	a1,-16711680
	lui	a0,%hi(.LC0)
	addi	sp,sp,-16
	addi	a1,a1,-256
	addi	a0,a0,%lo(.LC0)
	sw	ra,12(sp)
	call	printf
	lw	ra,12(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
