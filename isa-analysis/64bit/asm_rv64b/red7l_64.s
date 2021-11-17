	.file	"red7l_64.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_b2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	red7l_64
	.type	red7l_64, @function
red7l_64:
	li	a5,65536
	addi	a3,a5,-1
	srli	a4,a0,32
	not	a5,a0
	and	a4,a4,a3
	srli	a5,a5,32
	and	a5,a5,a3
	slli	a0,a4,32
	or	a0,a0,a4
	slli	a4,a5,16
	or	a0,a0,a4
	slli	a5,a5,48
	or	a0,a0,a5
	ret
	.size	red7l_64, .-red7l_64
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
	.dword	-3771425665557384106
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
