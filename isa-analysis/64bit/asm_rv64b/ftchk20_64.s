	.file	"ftchk20_64.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_b2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	ftchk20_64
	.type	ftchk20_64, @function
ftchk20_64:
	srli	a3,a0,32
	xor	a3,a3,a0
	srli	a5,a0,16
	li	a4,65536
	addi	a4,a4,-1
	srli	a2,a0,48
	xnor	a5,a5,a0
	or	a5,a5,a3
	and	a5,a5,a4
	andn	a0,a4,a0
	xor	a0,a0,a2
	or	a5,a5,a0
	slli	a4,a5,32
	slli	a0,a5,16
	or	a0,a0,a4
	or	a0,a0,a5
	slli	a5,a5,48
	or	a0,a0,a5
	ret
	.size	ftchk20_64, .-ftchk20_64
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"result: %016lx\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	li	a5,268439552
	slli	a1,a5,32
	lui	a0,%hi(.LC0)
	addi	sp,sp,-16
	add	a1,a1,a5
	addi	a0,a0,%lo(.LC0)
	sd	ra,8(sp)
	call	printf
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
