	.file	"ftchk8_64.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_b2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	ftchk8_64
	.type	ftchk8_64, @function
ftchk8_64:
	srli	a5,a0,8
	srli	a4,a0,16
	xor	a4,a4,a0
	xor	a5,a5,a0
	srli	a3,a0,24
	xor	a3,a3,a0
	or	a5,a5,a4
	srli	a4,a0,32
	xor	a4,a4,a0
	or	a5,a5,a3
	srli	a3,a0,40
	xor	a3,a3,a0
	or	a5,a5,a4
	srli	a4,a0,48
	xor	a4,a4,a0
	or	a5,a5,a3
	or	a5,a5,a4
	andi	a4,a0,255
	srli	a0,a0,56
	xor	a0,a4,a0
	andi	a5,a5,255
	or	a5,a5,a0
	slli	a4,a5,16
	slli	a0,a5,8
	or	a0,a0,a4
	or	a0,a0,a5
	slli	a4,a5,24
	or	a0,a0,a4
	slli	a4,a5,32
	or	a0,a0,a4
	slli	a4,a5,40
	or	a0,a0,a4
	slli	a4,a5,48
	or	a0,a0,a4
	slli	a5,a5,56
	or	a0,a0,a5
	ret
	.size	ftchk8_64, .-ftchk8_64
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC1:
	.string	"result: %016lx\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	lui	a5,%hi(.LC0)
	ld	a1,%lo(.LC0)(a5)
	lui	a0,%hi(.LC1)
	addi	sp,sp,-16
	addi	a0,a0,%lo(.LC1)
	sd	ra,8(sp)
	call	printf
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC0:
	.dword	-9187201950435737472
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
