	.file	"red11h_64.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	red11h_64
	.type	red11h_64, @function
red11h_64:
	srliw	a3,a0,24
	slli	a5,a3,32
	slli	a4,a3,16
	or	a4,a4,a5
	not	a0,a0
	srliw	a5,a0,24
	or	a0,a4,a3
	slli	a3,a3,48
	slli	a4,a5,8
	or	a0,a0,a3
	or	a0,a0,a4
	slli	a4,a5,24
	or	a0,a0,a4
	slli	a4,a5,40
	or	a0,a0,a4
	slli	a5,a5,56
	or	a0,a0,a5
	ret
	.size	red11h_64, .-red11h_64
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
	.dword	-3804192357613253836
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"