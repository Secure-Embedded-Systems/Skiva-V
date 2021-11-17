	.file	"ftchk25_64.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	ftchk9_64
	.type	ftchk9_64, @function
ftchk9_64:
	srli	a5,a0,16
	srli	a4,a0,32
	xor	a4,a4,a0
	xor	a5,a5,a0
	srli	a3,a0,48
	srli	a2,a0,8
	xor	a3,a3,a0
	or	a5,a5,a4
	xor	a2,a2,a0
	srli	a4,a0,24
	or	a5,a5,a3
	not	a2,a2
	xor	a4,a4,a0
	srli	a3,a0,40
	or	a5,a5,a2
	not	a4,a4
	xor	a3,a3,a0
	or	a5,a5,a4
	not	a3,a3
	andi	a4,a0,255
	srli	a0,a0,56
	or	a5,a5,a3
	xor	a0,a4,a0
	xori	a0,a0,255
	andi	a5,a5,255
	or	a5,a5,a0
	slli	a3,a5,32
	slli	a4,a5,16
	or	a4,a4,a3
	xori	a0,a5,255
	or	a4,a4,a5
	slli	a5,a5,48
	or	a5,a4,a5
	slli	a4,a0,8
	or	a5,a5,a4
	slli	a4,a0,24
	or	a5,a5,a4
	slli	a4,a0,40
	or	a5,a5,a4
	slli	a0,a0,56
	or	a0,a5,a0
	ret
	.size	ftchk9_64, .-ftchk9_64
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC1:
	.string	"result: %016lx\n"
	.section	.text.startup,"ax",@progbits
	.align	1
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
	.dword	71777214294589695
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
