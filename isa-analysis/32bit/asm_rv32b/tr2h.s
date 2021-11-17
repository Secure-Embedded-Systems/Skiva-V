	.file	"tr2h.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_d2p0_b2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	tr2h
	.type	tr2h, @function
tr2h:
	srli	a4,a1,1
	li	a5,1073741824
	and	a4,a4,a5
	li	a5,-2147483648
	and	a5,a0,a5
	srli	a3,a1,2
	or	a4,a4,a5
	li	a5,268435456
	and	a3,a3,a5
	or	a4,a4,a3
	srli	a5,a1,3
	li	a3,67108864
	and	a5,a5,a3
	or	a4,a4,a5
	srli	a3,a1,4
	li	a5,16777216
	and	a3,a3,a5
	or	a4,a4,a3
	srli	a5,a1,5
	li	a3,4194304
	and	a5,a5,a3
	or	a4,a4,a5
	srli	a3,a1,6
	li	a5,1048576
	and	a3,a3,a5
	or	a4,a4,a3
	srli	a5,a1,7
	li	a3,262144
	and	a5,a5,a3
	srli	a2,a1,8
	or	a4,a4,a5
	li	a5,65536
	and	a2,a2,a5
	or	a4,a4,a2
	srli	a5,a1,9
	li	a2,16384
	and	a5,a5,a2
	li	a3,4096
	srli	a2,a1,10
	and	a2,a2,a3
	or	a4,a4,a5
	srli	a5,a1,11
	or	a4,a4,a2
	andi	a5,a5,1024
	srli	a2,a1,12
	or	a4,a4,a5
	andi	a2,a2,256
	srli	a5,a1,13
	or	a4,a4,a2
	andi	a5,a5,64
	srli	a2,a1,14
	or	a4,a4,a5
	andi	a2,a2,16
	srli	a5,a1,15
	or	a4,a4,a2
	andi	a5,a5,4
	or	a4,a4,a5
	li	a6,536870912
	srli	a5,a0,1
	and	a6,a5,a6
	srli	a2,a0,2
	sbexti	a5,a1,16
	or	a5,a4,a5
	li	a4,134217728
	and	a4,a2,a4
	or	a5,a5,a6
	srli	a2,a0,3
	or	a5,a5,a4
	li	a4,33554432
	and	a2,a2,a4
	or	a5,a5,a2
	srli	a4,a0,4
	li	a2,8388608
	and	a4,a4,a2
	or	a5,a5,a4
	srli	a2,a0,5
	li	a4,2097152
	and	a2,a2,a4
	or	a5,a5,a2
	srli	a4,a0,6
	li	a2,524288
	and	a4,a4,a2
	or	a5,a5,a4
	srli	a2,a0,7
	li	a4,131072
	and	a2,a2,a4
	or	a5,a5,a2
	srli	a4,a0,8
	li	a2,32768
	and	a4,a4,a2
	or	a5,a5,a4
	srli	a2,a0,9
	li	a4,8192
	and	a2,a2,a4
	addi	a3,a3,-2048
	srli	a4,a0,10
	and	a4,a4,a3
	or	a5,a5,a2
	srli	a3,a0,11
	or	a5,a5,a4
	andi	a3,a3,512
	srli	a4,a0,12
	or	a5,a5,a3
	andi	a4,a4,128
	srli	a3,a0,13
	or	a5,a5,a4
	andi	a3,a3,32
	srli	a4,a0,14
	or	a5,a5,a3
	andi	a4,a4,8
	srli	a0,a0,15
	or	a5,a5,a4
	andi	a0,a0,2
	or	a0,a5,a0
	ret
	.size	tr2h, .-tr2h
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"result: %08x\n"
	.section	.text.startup,"ax",@progbits
	.align	2
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
