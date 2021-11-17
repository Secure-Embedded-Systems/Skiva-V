#include <stdio.h>
#include <stdint.h>

uint64_t ftchk5_64 (uint64_t rs1) {
	uint64_t rd; 	
	uint64_t compare; 	
	uint64_t compare_bar; 	
	uint64_t A, B, C, D; 	

	A = (rs1 & 0x000000000000ffff);
	B = (rs1 & 0x00000000ffff0000) >> 16;
	C = (rs1 & 0x0000ffff00000000) >> 32;
	D = (rs1 & 0xffff000000000000) >> 48;
	compare = (A ^ B) | (A ^ C) | (A ^ D);
	compare_bar = ~compare & 0x000000000000ffff;
	rd = compare | (compare_bar << 16) | (compare << 32) | (compare_bar << 48);

	return rd;
}

int main (int argc, char *argv[]) {

	uint64_t rs1 = 0x1212121212341234;  // 0xffd90026ffd90026	
	uint64_t rd;

	rd = ftchk5_64 (rs1);

	printf("result: %016lx\n", rd);
	
	return 0;
}
