	.file	"tr2h_64.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_b2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	tr2h_64
	.type	tr2h_64, @function
tr2h_64:
	srli	a3,a1,1
	sbseti	a5,zero,62
	and	a3,a3,a5
	sbseti	a5,zero,63
	and	a5,a0,a5
	srli	a4,a1,2
	or	a3,a3,a5
	sbseti	a5,zero,60
	and	a4,a4,a5
	or	a3,a3,a4
	srli	a5,a1,3
	sbseti	a4,zero,58
	and	a5,a5,a4
	or	a3,a3,a5
	srli	a4,a1,4
	sbseti	a5,zero,56
	and	a4,a4,a5
	or	a3,a3,a4
	srli	a5,a1,5
	sbseti	a4,zero,54
	and	a5,a5,a4
	or	a3,a3,a5
	srli	a4,a1,6
	sbseti	a5,zero,52
	and	a4,a4,a5
	or	a3,a3,a4
	srli	a5,a1,7
	sbseti	a4,zero,50
	and	a5,a5,a4
	or	a3,a3,a5
	srli	a4,a1,8
	sbseti	a5,zero,48
	and	a4,a4,a5
	or	a3,a3,a4
	srli	a5,a1,9
	sbseti	a4,zero,46
	and	a5,a5,a4
	or	a3,a3,a5
	srli	a4,a1,10
	sbseti	a5,zero,44
	and	a4,a4,a5
	or	a3,a3,a4
	srli	a5,a1,11
	sbseti	a4,zero,42
	and	a5,a5,a4
	or	a3,a3,a5
	srli	a4,a1,12
	sbseti	a5,zero,40
	and	a4,a4,a5
	or	a3,a3,a4
	srli	a5,a1,13
	sbseti	a4,zero,38
	and	a5,a5,a4
	or	a3,a3,a5
	srli	a4,a1,14
	sbseti	a5,zero,36
	and	a4,a4,a5
	or	a3,a3,a4
	srli	a5,a1,15
	sbseti	a4,zero,34
	and	a5,a5,a4
	or	a3,a3,a5
	srli	a4,a1,16
	sbseti	a5,zero,32
	and	a4,a4,a5
	or	a3,a3,a4
	srli	a5,a1,17
	li	a4,1073741824
	and	a5,a5,a4
	or	a3,a3,a5
	srli	a4,a1,18
	li	a5,268435456
	and	a4,a4,a5
	or	a3,a3,a4
	srli	a5,a1,19
	li	a4,67108864
	and	a5,a5,a4
	or	a3,a3,a5
	srli	a4,a1,20
	li	a5,16777216
	and	a4,a4,a5
	or	a3,a3,a4
	srli	a5,a1,21
	li	a4,4194304
	and	a5,a5,a4
	or	a3,a3,a5
	srli	a4,a1,22
	li	a5,1048576
	and	a4,a4,a5
	or	a3,a3,a4
	srli	a5,a1,23
	li	a4,262144
	and	a5,a5,a4
	srli	a2,a1,24
	or	a3,a3,a5
	li	a5,65536
	and	a2,a2,a5
	or	a3,a3,a2
	srli	a5,a1,25
	li	a2,16384
	and	a5,a5,a2
	li	a4,4096
	srli	a2,a1,26
	and	a2,a2,a4
	or	a3,a3,a5
	srli	a5,a1,27
	or	a3,a3,a2
	andi	a5,a5,1024
	srli	a2,a1,28
	or	a3,a3,a5
	andi	a2,a2,256
	srli	a5,a1,29
	or	a3,a3,a2
	andi	a5,a5,64
	srli	a2,a1,30
	or	a3,a3,a5
	andi	a2,a2,16
	srli	a5,a1,31
	or	a3,a3,a2
	andi	a5,a5,4
	or	a3,a3,a5
	sbseti	a6,zero,61
	srli	a5,a0,1
	and	a6,a5,a6
	srli	a2,a0,2
	sbexti	a5,a1,32
	or	a5,a3,a5
	sbseti	a3,zero,59
	and	a3,a2,a3
	or	a5,a5,a6
	srli	a2,a0,3
	or	a5,a5,a3
	sbseti	a3,zero,57
	and	a2,a2,a3
	or	a5,a5,a2
	srli	a3,a0,4
	sbseti	a2,zero,55
	and	a3,a3,a2
	or	a5,a5,a3
	srli	a2,a0,5
	sbseti	a3,zero,53
	and	a2,a2,a3
	or	a5,a5,a2
	srli	a3,a0,6
	sbseti	a2,zero,51
	and	a3,a3,a2
	or	a5,a5,a3
	srli	a2,a0,7
	sbseti	a3,zero,49
	and	a2,a2,a3
	or	a5,a5,a2
	srli	a3,a0,8
	sbseti	a2,zero,47
	and	a3,a3,a2
	or	a5,a5,a3
	srli	a2,a0,9
	sbseti	a3,zero,45
	and	a2,a2,a3
	or	a5,a5,a2
	srli	a3,a0,10
	sbseti	a2,zero,43
	and	a3,a3,a2
	or	a5,a5,a3
	srli	a2,a0,11
	sbseti	a3,zero,41
	and	a2,a2,a3
	or	a5,a5,a2
	srli	a3,a0,12
	sbseti	a2,zero,39
	and	a3,a3,a2
	or	a5,a5,a3
	srli	a2,a0,13
	sbseti	a3,zero,37
	and	a2,a2,a3
	or	a5,a5,a2
	srli	a3,a0,14
	sbseti	a2,zero,35
	and	a3,a3,a2
	or	a5,a5,a3
	srli	a2,a0,15
	sbseti	a3,zero,33
	and	a2,a2,a3
	or	a5,a5,a2
	li	a2,1
	srli	a3,a0,16
	slli	a2,a2,31
	and	a3,a3,a2
	or	a5,a5,a3
	srli	a2,a0,17
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
	.dword	-6148914691236517206
	.ident	"GCC: (GNU) 10.0.0 20190929 (experimental)"
