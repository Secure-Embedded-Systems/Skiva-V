	.file	"invtr2l_64.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	invtr2l_64
	.type	invtr2l_64, @function
invtr2l_64:
	li	a4,1
	and	a5,a4,a0
	andi	a6,a1,1
	slli	a2,a4,33
	slli	a3,a0,31
	slli	a5,a5,32
	and	a3,a3,a2
	or	a5,a5,a6
	slli	a2,a0,30
	slli	a6,a4,34
	and	a2,a2,a6
	or	a5,a5,a3
	slli	a6,a4,35
	slli	a3,a0,29
	and	a3,a3,a6
	or	a5,a5,a2
	slli	a6,a4,36
	slli	a2,a0,28
	and	a2,a2,a6
	or	a5,a5,a3
	slli	a6,a4,37
	slli	a3,a0,27
	and	a3,a3,a6
	or	a5,a5,a2
	slli	a6,a4,38
	slli	a2,a0,26
	and	a2,a2,a6
	or	a5,a5,a3
	slli	a6,a4,39
	slli	a3,a0,25
	and	a3,a3,a6
	or	a5,a5,a2
	slli	a6,a4,40
	slli	a2,a0,24
	and	a2,a2,a6
	or	a5,a5,a3
	slli	a6,a4,41
	slli	a3,a0,23
	and	a3,a3,a6
	or	a5,a5,a2
	slli	a6,a4,42
	slli	a2,a0,22
	and	a2,a2,a6
	or	a5,a5,a3
	slli	a6,a4,43
	slli	a3,a0,21
	and	a3,a3,a6
	or	a5,a5,a2
	slli	a6,a4,44
	slli	a2,a0,20
	and	a2,a2,a6
	or	a5,a5,a3
	slli	a6,a4,45
	slli	a3,a0,19
	and	a3,a3,a6
	or	a5,a5,a2
	slli	a6,a4,46
	slli	a2,a0,18
	and	a2,a2,a6
	or	a5,a5,a3
	slli	a6,a4,47
	slli	a3,a0,17
	and	a3,a3,a6
	or	a5,a5,a2
	slli	a6,a4,48
	slli	a2,a0,16
	and	a2,a2,a6
	or	a5,a5,a3
	slli	a6,a4,49
	slli	a3,a0,15
	and	a3,a3,a6
	or	a5,a5,a2
	slli	a6,a4,50
	slli	a2,a0,14
	and	a2,a2,a6
	slli	a7,a4,51
	or	a5,a5,a3
	slli	a3,a0,13
	li	a6,4194304
	and	a3,a3,a7
	or	a5,a5,a2
	slli	a7,a0,12
	slli	a2,a4,52
	and	a7,a7,a2
	slli	t1,a4,53
	or	a5,a5,a3
	slli	a2,a0,11
	slli	a3,a6,32
	and	a2,a2,t1
	add	a3,a3,a6
	or	a5,a5,a7
	slli	a7,a0,10
	and	a7,a7,a3
	slli	t1,a4,55
	or	a5,a5,a2
	slli	a3,a0,9
	li	a2,67108864
	and	a3,a3,t1
	or	a5,a5,a7
	slli	t1,a4,56
	slli	a7,a0,8
	and	a7,a7,t1
	slli	t3,a4,57
	or	a5,a5,a3
	slli	t1,a0,7
	slli	a3,a2,32
	and	t1,t1,t3
	add	a3,a3,a2
	or	a5,a5,a7
	slli	a7,a0,6
	and	a7,a7,a3
	slli	t3,a4,59
	or	a5,a5,t1
	slli	t1,a0,5
	li	a3,1073741824
	and	t1,t1,t3
	or	a5,a5,a7
	slli	t3,a4,60
	slli	a7,a0,4
	and	a7,a7,t3
	slli	t4,a4,61
	or	a5,a5,t1
	slli	t3,a0,3
	slli	t1,a3,32
	and	t3,t3,t4
	add	t1,t1,a3
	or	a5,a5,a7
	slli	a7,a0,2
	slli	a0,a0,1
	and	a7,a7,t1
	or	a5,a5,t3
	srli	a0,a0,63
	or	a5,a5,a7
	slli	a0,a0,63
	srli	a7,a1,1
	or	a5,a5,a0
	andi	a0,a7,2
	srli	a7,a1,2
	or	a5,a5,a0
	andi	a7,a7,4
	srli	a0,a1,3
	or	a5,a5,a7
	andi	a0,a0,8
	srli	a7,a1,4
	or	a5,a5,a0
	andi	a7,a7,16
	srli	a0,a1,5
	or	a5,a5,a7
	andi	a0,a0,32
	srli	a7,a1,6
	or	a5,a5,a0
	andi	a7,a7,64
	srli	a0,a1,7
	or	a5,a5,a7
	andi	a0,a0,128
	srli	t1,a1,8
	or	a5,a5,a0
	andi	t1,t1,256
	srli	a7,a1,9
	li	t3,4096
	or	a5,a5,t1
	andi	a7,a7,512
	srli	t1,a1,10
	addi	a0,t3,-2048
	or	a5,a5,a7
	andi	t1,t1,1024
	srli	a7,a1,11
	and	a7,a7,a0
	or	a5,a5,t1
	srli	a0,a1,12
	and	a0,a0,t3
	or	a5,a5,a7
	or	a5,a5,a0
	srli	a7,a1,13
	li	a0,8192
	and	a7,a7,a0
	or	a5,a5,a7
	srli	a0,a1,14
	li	a7,16384
	and	a0,a0,a7
	or	a5,a5,a0
	srli	a7,a1,15
	li	a0,32768
	and	a7,a7,a0
	or	a5,a5,a7
	srli	a0,a1,16
	li	a7,65536
	and	a0,a0,a7
	or	a5,a5,a0
	srli	a7,a1,17
	li	a0,131072
	and	a7,a7,a0
	or	a5,a5,a7
	srli	a0,a1,18
	li	a7,262144
	and	a0,a0,a7
	or	a5,a5,a0
	srli	a7,a1,19
	li	a0,524288
	and	a7,a7,a0
	or	a5,a5,a7
	srli	a0,a1,20
	li	a7,1048576
	and	a0,a0,a7
	or	a5,a5,a0
	srli	a7,a1,21
	li	a0,2097152
	and	a7,a7,a0
	srli	a0,a1,22
	and	a0,a0,a6
	or	a5,a5,a7
	srli	a6,a1,23
	or	a5,a5,a0
	li	a0,8388608
	and	a6,a6,a0
	or	a5,a5,a6
	srli	a0,a1,24
	li	a6,16777216
	and	a0,a0,a6
	or	a5,a5,a0
	srli	a6,a1,25
	li	a0,33554432
	and	a6,a6,a0
	srli	a0,a1,26
	and	a0,a0,a2
	or	a5,a5,a6
	srli	a2,a1,27
	or	a5,a5,a0
	li	a0,134217728
	and	a2,a2,a0
	or	a5,a5,a2
	srli	a0,a1,28
	li	a2,268435456
	and	a0,a0,a2
	or	a5,a5,a0
	srli	a2,a1,29
	li	a0,536870912
	and	a2,a2,a0
	srli	a0,a1,30
	and	a3,a0,a3
	or	a5,a5,a2
	srli	a1,a1,31
	slli	a4,a4,31
	or	a5,a5,a3
	and	a0,a1,a4
	or	a0,a5,a0
	ret
	.size	invtr2l_64, .-invtr2l_64
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"result: %016lx\n"
	.section	.text.startup,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
	lui	a0,%hi(.LC0)
	addi	sp,sp,-16
	li	a1,-1
	addi	a0,a0,%lo(.LC0)
	sd	ra,8(sp)
	call	printf
	ld	ra,8(sp)
	li	a0,0
	addi	sp,sp,16
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
