	.file	"tr2l_64.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	tr2l_64
	.type	tr2l_64, @function
tr2l_64:
	li	a4,1
	slli	a6,a4,62
	slli	a2,a4,60
	slli	a5,a1,31
	slli	a3,a1,30
	and	a3,a3,a2
	and	a5,a5,a6
	slli	a2,a4,58
	andi	a6,a1,1
	or	a5,a5,a3
	slli	a3,a1,29
	and	a3,a3,a2
	or	a5,a5,a6
	slli	a2,a1,28
	slli	a6,a4,56
	and	a2,a2,a6
	or	a5,a5,a3
	slli	a6,a4,54
	slli	a3,a1,27
	and	a3,a3,a6
	or	a5,a5,a2
	slli	a6,a4,52
	slli	a2,a1,26
	and	a2,a2,a6
	or	a5,a5,a3
	slli	a6,a4,50
	slli	a3,a1,25
	and	a3,a3,a6
	or	a5,a5,a2
	slli	a6,a4,48
	slli	a2,a1,24
	and	a2,a2,a6
	or	a5,a5,a3
	slli	a6,a4,46
	slli	a3,a1,23
	and	a3,a3,a6
	or	a5,a5,a2
	slli	a6,a4,44
	slli	a2,a1,22
	and	a2,a2,a6
	or	a5,a5,a3
	slli	a6,a4,42
	slli	a3,a1,21
	and	a3,a3,a6
	or	a5,a5,a2
	slli	a6,a4,40
	slli	a2,a1,20
	and	a2,a2,a6
	or	a5,a5,a3
	slli	a6,a4,38
	slli	a3,a1,19
	and	a3,a3,a6
	or	a5,a5,a2
	slli	a6,a4,36
	slli	a2,a1,18
	and	a2,a2,a6
	or	a5,a5,a3
	slli	a6,a4,34
	slli	a3,a1,17
	and	a3,a3,a6
	or	a5,a5,a2
	slli	a6,a4,32
	slli	a2,a1,16
	and	a2,a2,a6
	or	a5,a5,a3
	or	a5,a5,a2
	slli	a3,a1,15
	li	a2,1073741824
	and	a3,a3,a2
	or	a5,a5,a3
	slli	a2,a1,14
	li	a3,268435456
	and	a2,a2,a3
	or	a5,a5,a2
	slli	a3,a1,13
	li	a2,67108864
	and	a3,a3,a2
	or	a5,a5,a3
	slli	a2,a1,12
	li	a3,16777216
	and	a2,a2,a3
	or	a5,a5,a2
	slli	a3,a1,11
	li	a2,4194304
	and	a3,a3,a2
	or	a5,a5,a3
	slli	a2,a1,10
	li	a3,1048576
	and	a2,a2,a3
	or	a5,a5,a2
	slli	a3,a1,9
	li	a2,262144
	and	a3,a3,a2
	slli	a6,a1,8
	or	a5,a5,a3
	li	a3,65536
	and	a6,a6,a3
	slli	a2,a1,7
	or	a5,a5,a6
	li	a6,16384
	and	a2,a2,a6
	li	a3,4096
	slli	a6,a1,6
	and	a6,a6,a3
	or	a5,a5,a2
	slli	a2,a1,5
	or	a5,a5,a6
	andi	a2,a2,1024
	slli	a6,a1,4
	or	a5,a5,a2
	andi	a6,a6,256
	slli	a2,a1,3
	or	a5,a5,a6
	andi	a6,a2,64
	slli	a2,a1,2
	or	a5,a5,a6
	andi	a2,a2,16
	slli	a1,a1,1
	or	a5,a5,a2
	andi	a1,a1,4
	srliw	a2,a0,31
	slli	a6,a4,61
	or	a5,a5,a1
	slli	a2,a2,63
	slli	a1,a0,31
	and	a1,a1,a6
	or	a5,a5,a2
	slli	a6,a4,59
	slli	a2,a0,30
	and	a2,a2,a6
	or	a5,a5,a1
	slli	a6,a4,57
	slli	a1,a0,29
	and	a1,a1,a6
	or	a5,a5,a2
	slli	a6,a4,55
	slli	a2,a0,28
	and	a2,a2,a6
	or	a5,a5,a1
	slli	a6,a4,53
	slli	a1,a0,27
	and	a1,a1,a6
	or	a5,a5,a2
	slli	a6,a4,51
	slli	a2,a0,26
	and	a2,a2,a6
	or	a5,a5,a1
	slli	a6,a4,49
	slli	a1,a0,25
	and	a1,a1,a6
	or	a5,a5,a2
	slli	a6,a4,47
	slli	a2,a0,24
	and	a2,a2,a6
	or	a5,a5,a1
	slli	a6,a4,45
	slli	a1,a0,23
	and	a1,a1,a6
	or	a5,a5,a2
	slli	a6,a4,43
	slli	a2,a0,22
	and	a2,a2,a6
	or	a5,a5,a1
	slli	a6,a4,41
	slli	a1,a0,21
	and	a1,a1,a6
	or	a5,a5,a2
	slli	a6,a4,39
	slli	a2,a0,20
	and	a2,a2,a6
	or	a5,a5,a1
	slli	a6,a4,37
	slli	a1,a0,19
	and	a1,a1,a6
	or	a5,a5,a2
	slli	a6,a4,35
	slli	a2,a0,18
	and	a2,a2,a6
	or	a5,a5,a1
	slli	a6,a4,33
	slli	a1,a0,17
	or	a5,a5,a2
	and	a1,a1,a6
	slli	a2,a0,16
	slli	a4,a4,31
	and	a4,a2,a4
	or	a5,a5,a1
	slli	a2,a0,15
	or	a5,a5,a4
	li	a4,536870912
	and	a2,a2,a4
	or	a5,a5,a2
	slli	a4,a0,14
	li	a2,134217728
	and	a4,a4,a2
	or	a5,a5,a4
	slli	a2,a0,13
	li	a4,33554432
	and	a2,a2,a4
	or	a5,a5,a2
	slli	a4,a0,12
	li	a2,8388608
	and	a4,a4,a2
	or	a5,a5,a4
	slli	a2,a0,11
	li	a4,2097152
	and	a2,a2,a4
	or	a5,a5,a2
	slli	a4,a0,10
	li	a2,524288
	and	a4,a4,a2
	or	a5,a5,a4
	slli	a2,a0,9
	li	a4,131072
	and	a2,a2,a4
	or	a5,a5,a2
	slli	a4,a0,8
	li	a2,32768
	and	a4,a4,a2
	or	a5,a5,a4
	slli	a2,a0,7
	li	a4,8192
	and	a2,a2,a4
	addi	a3,a3,-2048
	slli	a4,a0,6
	and	a4,a4,a3
	or	a5,a5,a2
	slli	a3,a0,5
	or	a5,a5,a4
	andi	a3,a3,512
	slli	a4,a0,4
	or	a5,a5,a3
	andi	a4,a4,128
	slli	a3,a0,3
	or	a5,a5,a4
	andi	a3,a3,32
	slli	a4,a0,2
	or	a5,a5,a3
	andi	a4,a4,8
	slli	a0,a0,1
	or	a5,a5,a4
	andi	a0,a0,2
	or	a0,a5,a0
	ret
	.size	tr2l_64, .-tr2l_64
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
