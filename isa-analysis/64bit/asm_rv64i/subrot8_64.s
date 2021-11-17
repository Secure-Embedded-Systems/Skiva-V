	.file	"subrot8_64.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	subrot8_64
	.type	subrot8_64, @function
subrot8_64:
	lui	a4,%hi(.LC0)
	ld	a4,%lo(.LC0)(a4)
	slli	a5,a0,1
	srli	a0,a0,7
	and	a5,a5,a4
	lui	a4,%hi(.LC1)
	ld	a4,%lo(.LC1)(a4)
	and	a0,a0,a4
	or	a0,a5,a0
	ret
	.size	subrot8_64, .-subrot8_64
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC2:
	.string	"result: %016lx\n"
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
	lui	a5,%hi(.LC1)
	ld	a1,%lo(.LC1)(a5)
	lui	a0,%hi(.LC2)
	addi	sp,sp,-16
	addi	a0,a0,%lo(.LC2)
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
	.dword	-72340172838076674
	.align	3
.LC1:
	.dword	72340172838076673
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
