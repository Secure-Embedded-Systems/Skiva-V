	.file	"ftchk3_64.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	ftchk3_64
	.type	ftchk3_64, @function
ftchk3_64:
	slli	a5,a0,32
	srli	a5,a5,32
	srli	a0,a0,32
	xor	a0,a5,a0
	not	a5,a0
	slli	a5,a5,32
	or	a0,a5,a0
	ret
	.size	ftchk3_64, .-ftchk3_64
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"result: %016lx\n"
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
	li	a1,-1
	lui	a0,%hi(.LC0)
	addi	sp,sp,-16
	slli	a1,a1,32
	addi	a0,a0,%lo(.LC0)
	sd	ra,8(sp)
	call	printf
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
