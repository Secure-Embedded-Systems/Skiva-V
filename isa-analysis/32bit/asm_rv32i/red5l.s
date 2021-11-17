	.file	"red5l.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	red5l
	.type	red5l, @function
red5l:
	andi	a4,a0,255
	not	a0,a0
	andi	a5,a0,255
	slli	a0,a4,16
	or	a0,a0,a4
	slli	a4,a5,8
	or	a0,a0,a4
	slli	a5,a5,24
	or	a0,a0,a5
	ret
	.size	red5l, .-red5l
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"result: %08x\n"
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
	li	a1,1437224960
	lui	a0,%hi(.LC0)
	addi	sp,sp,-16
	addi	a1,a1,1450
	addi	a0,a0,%lo(.LC0)
	sw	ra,12(sp)
	call	printf
	lw	ra,12(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
