	.file	"red4l.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	red4l
	.type	red4l, @function
red4l:
	andi	a5,a0,0xff
	slli	a4,a5,16
	slli	a0,a5,8
	or	a0,a0,a4
	or	a0,a0,a5
	slli	a5,a5,24
	or	a0,a0,a5
	ret
	.size	red4l, .-red4l
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"result: %08x\n"
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
	li	a1,-1431654400
	lui	a0,%hi(.LC0)
	addi	sp,sp,-16
	addi	a1,a1,-1366
	addi	a0,a0,%lo(.LC0)
	sw	ra,12(sp)
	call	printf
	lw	ra,12(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
