	.file	"tr2h_64.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	tr2h_64
	.type	tr2h_64, @function
tr2h_64:
	li	a3,1
	slli	a2,a3,62
	srli	a5,a1,1
	srli	a4,a0,63
	slli	a6,a3,60
	and	a5,a5,a2
	slli	a4,a4,63
	srli	a2,a1,2
	and	a2,a2,a6
	or	a5,a5,a4
	slli	a6,a3,58
	srli	a4,a1,3
	and	a4,a4,a6
	or	a5,a5,a2
	slli	a6,a3,56
	srli	a2,a1,4
	and	a2,a2,a6
	or	a5,a5,a4
	slli	a6,a3,54
	srli	a4,a1,5
	and	a4,a4,a6
	or	a5,a5,a2
	slli	a6,a3,52
	srli	a2,a1,6
	and	a2,a2,a6
	or	a5,a5,a4
	slli	a6,a3,50
	srli	a4,a1,7
	and	a4,a4,a6
	or	a5,a5,a2
	slli	a6,a3,48
	srli	a2,a1,8
	and	a2,a2,a6
	or	a5,a5,a4
	slli	a6,a3,46
	srli	a4,a1,9
	and	a4,a4,a6
	or	a5,a5,a2
	slli	a6,a3,44
	srli	a2,a1,10
	and	a2,a2,a6
	or	a5,a5,a4
	slli	a6,a3,42
	srli	a4,a1,11
	and	a4,a4,a6
	or	a5,a5,a2
	slli	a6,a3,40
	srli	a2,a1,12
	and	a2,a2,a6
	or	a5,a5,a4
	slli	a6,a3,38
	srli	a4,a1,13
	and	a4,a4,a6
	or	a5,a5,a2
	slli	a6,a3,36
	srli	a2,a1,14
	and	a2,a2,a6
	or	a5,a5,a4
	slli	a6,a3,34
	srli	a4,a1,15
	and	a4,a4,a6
	or	a5,a5,a2
	slli	a6,a3,32
	srli	a2,a1,16
	and	a2,a2,a6
	or	a5,a5,a4
	or	a5,a5,a2
	srli	a4,a1,17
	li	a2,1073741824
	and	a4,a4,a2
	or	a5,a5,a4
	srli	a2,a1,18
	li	a4,268435456
	and	a2,a2,a4
	or	a5,a5,a2
	srli	a4,a1,19
	li	a2,67108864
	and	a4,a4,a2
	or	a5,a5,a4
	srli	a2,a1,20
	li	a4,16777216
	and	a2,a2,a4
	or	a5,a5,a2
	srli	a4,a1,21
	li	a2,4194304
	and	a4,a4,a2
	or	a5,a5,a4
	srli	a2,a1,22
	li	a4,1048576
	and	a2,a2,a4
	or	a5,a5,a2
	srli	a4,a1,23
	li	a2,262144
	and	a4,a4,a2
	srli	a6,a1,24
	or	a5,a5,a4
	li	a4,65536
	and	a6,a6,a4
	srli	a2,a1,25
	or	a5,a5,a6
	li	a6,16384
	and	a2,a2,a6
	li	a4,4096
	srli	a6,a1,26
	and	a6,a6,a4
	or	a5,a5,a2
	srli	a2,a1,27
	or	a5,a5,a6
	andi	a2,a2,1024
	srli	a6,a1,28
	or	a5,a5,a2
	andi	a6,a6,256
	srli	a2,a1,29
	or	a5,a5,a6
	andi	a2,a2,64
	srli	a6,a1,30
	or	a5,a5,a2
	andi	a6,a6,16
	srli	a2,a1,31
	or	a5,a5,a6
	andi	a2,a2,4
	srli	a1,a1,32
	slli	a6,a3,61
	or	a5,a5,a2
	andi	a1,a1,1
	srli	a2,a0,1
	or	a5,a5,a1
	and	a1,a2,a6
	slli	a6,a3,59
	srli	a2,a0,2
	and	a2,a2,a6
	or	a5,a5,a1
	slli	a6,a3,57
	srli	a1,a0,3
	and	a1,a1,a6
	or	a5,a5,a2
	slli	a6,a3,55
	srli	a2,a0,4
	and	a2,a2,a6
	or	a5,a5,a1
	slli	a6,a3,53
	srli	a1,a0,5
	and	a1,a1,a6
	or	a5,a5,a2
	slli	a6,a3,51
	srli	a2,a0,6
	and	a2,a2,a6
	or	a5,a5,a1
	slli	a6,a3,49
	srli	a1,a0,7
	and	a1,a1,a6
	or	a5,a5,a2
	slli	a6,a3,47
	srli	a2,a0,8
	and	a2,a2,a6
	or	a5,a5,a1
	slli	a6,a3,45
	srli	a1,a0,9
	and	a1,a1,a6
	or	a5,a5,a2
	slli	a6,a3,43
	srli	a2,a0,10
	and	a2,a2,a6
	or	a5,a5,a1
	slli	a6,a3,41
	srli	a1,a0,11
	and	a1,a1,a6
	or	a5,a5,a2
	slli	a6,a3,39
	srli	a2,a0,12
	and	a2,a2,a6
	or	a5,a5,a1
	slli	a6,a3,37
	srli	a1,a0,13
	and	a1,a1,a6
	or	a5,a5,a2
	slli	a6,a3,35
	srli	a2,a0,14
	and	a2,a2,a6
	or	a5,a5,a1
	slli	a6,a3,33
	srli	a1,a0,15
	or	a5,a5,a2
	and	a1,a1,a6
	srli	a2,a0,16
	slli	a3,a3,31
	and	a3,a2,a3
	or	a5,a5,a1
	srli	a2,a0,17
	or	a5,a5,a3
	li	a3,536870912
	and	a2,a2,a3
	or	a5,a5,a2
	srli	a3,a0,18
	li	a2,134217728
	and	a3,a3,a2
	or	a5,a5,a3
	srli	a2,a0,19
	li	a3,33554432
	and	a2,a2,a3
	or	a5,a5,a2
	srli	a3,a0,20
	li	a2,8388608
	and	a3,a3,a2
	or	a5,a5,a3
	srli	a2,a0,21
	li	a3,2097152
	and	a2,a2,a3
	or	a5,a5,a2
	srli	a3,a0,22
	li	a2,524288
	and	a3,a3,a2
	or	a5,a5,a3
	srli	a2,a0,23
	li	a3,131072
	and	a2,a2,a3
	or	a5,a5,a2
	srli	a3,a0,24
	li	a2,32768
	and	a3,a3,a2
	or	a5,a5,a3
	srli	a2,a0,25
	li	a3,8192
	and	a2,a2,a3
	addi	a4,a4,-2048
	srli	a3,a0,26
	and	a4,a3,a4
	or	a5,a5,a2
	srli	a3,a0,27
	or	a5,a5,a4
	andi	a3,a3,512
	srli	a4,a0,28
	or	a5,a5,a3
	andi	a4,a4,128
	srli	a3,a0,29
	or	a5,a5,a4
	andi	a3,a3,32
	srli	a4,a0,30
	or	a5,a5,a3
	andi	a4,a4,8
	srli	a0,a0,31
	or	a5,a5,a4
	andi	a0,a0,2
	or	a0,a5,a0
	ret
	.size	tr2h_64, .-tr2h_64
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
	.dword	-6148914691236517206
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
