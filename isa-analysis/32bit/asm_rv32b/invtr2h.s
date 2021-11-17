	.file	"invtr2h.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_b2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	invtr2h
	.type	invtr2h, @function
invtr2h:
	slli	a5,a0,15
	li	a3,65536
	slli	a4,a0,14
	and	a5,a5,a3
	li	a3,131072
	and	a4,a4,a3
	or	a5,a5,a4
	li	a4,-2147483648
	and	a4,a0,a4
	slli	a3,a0,13
	or	a5,a5,a4
	li	a4,262144
	and	a3,a3,a4
	or	a5,a5,a3
	slli	a4,a0,12
	li	a3,524288
	and	a4,a4,a3
	or	a5,a5,a4
	slli	a3,a0,11
	li	a4,1048576
	and	a3,a3,a4
	or	a5,a5,a3
	slli	a4,a0,10
	li	a3,2097152
	and	a4,a4,a3
	or	a5,a5,a4
	slli	a3,a0,9
	li	a4,4194304
	and	a3,a3,a4
	or	a5,a5,a3
	slli	a4,a0,8
	li	a3,8388608
	and	a4,a4,a3
	or	a5,a5,a4
	slli	a3,a0,7
	li	a4,16777216
	and	a3,a3,a4
	or	a5,a5,a3
	slli	a4,a0,6
	li	a3,33554432
	and	a4,a4,a3
	or	a5,a5,a4
	slli	a3,a0,5
	li	a4,67108864
	and	a3,a3,a4
	or	a5,a5,a3
	slli	a4,a0,4
	li	a3,134217728
	and	a4,a4,a3
	or	a5,a5,a4
	slli	a3,a0,3
	li	a4,268435456
	and	a3,a3,a4
	or	a5,a5,a3
	slli	a4,a0,2
	li	a3,536870912
	and	a4,a4,a3
	or	a5,a5,a4
	slli	a0,a0,1
	li	a4,1073741824
	and	a0,a0,a4
	or	a5,a5,a0
	srli	a4,a1,2
	sbexti	a2,a1,1
	andi	a4,a4,2
	srli	a3,a1,3
	or	a5,a5,a2
	or	a5,a5,a4
	andi	a3,a3,4
	srli	a4,a1,4
	or	a5,a5,a3
	andi	a4,a4,8
	srli	a3,a1,5
	or	a5,a5,a4
	andi	a3,a3,16
	srli	a4,a1,6
	or	a5,a5,a3
	andi	a4,a4,32
	srli	a3,a1,7
	or	a5,a5,a4
	andi	a3,a3,64
	srli	a4,a1,8
	or	a5,a5,a3
	andi	a4,a4,128
	srli	a3,a1,9
	or	a5,a5,a4
	andi	a3,a3,256
	srli	a4,a1,10
	li	a2,4096
	or	a5,a5,a3
	andi	a4,a4,512
	srli	a3,a1,11
	addi	a0,a2,-2048
	or	a5,a5,a4
	andi	a3,a3,1024
	srli	a4,a1,12
	and	a4,a4,a0
	or	a5,a5,a3
	srli	a0,a1,13
	and	a0,a0,a2
	or	a5,a5,a4
	or	a5,a5,a0
	srli	a4,a1,14
	li	a0,8192
	and	a4,a4,a0
	or	a5,a5,a4
	srli	a0,a1,15
	li	a4,16384
	and	a0,a0,a4
	or	a5,a5,a0
	srli	a1,a1,16
	li	a0,32768
	and	a0,a1,a0
	or	a0,a5,a0
	ret
	.size	invtr2h, .-invtr2h
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"result: %08x\n"
	.section	.text.startup,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	lui	a0,%hi(.LC0)
	addi	sp,sp,-16
	li	a1,0
	addi	a0,a0,%lo(.LC0)
	sw	ra,12(sp)
	call	printf
	lw	ra,12(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
