	.file	"red3l.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	red3l
	.type	red3l, @function
red3l:
	slli	a0,a0,16
	srli	a0,a0,16
	not	a5,a0
	slli	a5,a5,16
	or	a0,a5,a0
	ret
	.size	red3l, .-red3l
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"result: %08x\n"
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
	li	a1,1431678976
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
