#include <stdio.h>
#include <stdint.h>

uint32_t ftchk13 (uint32_t rs1) {
	uint32_t rd; 	
	uint32_t compare; 	
	uint32_t compare_bar; 	
	uint32_t A, B, C, D; 	

	A = (rs1 & 0x000000ff);
	B = (rs1 & 0x0000ff00) >> 8;
	C = (rs1 & 0x00ff0000) >> 16;
	D = (rs1 & 0xff000000) >> 24;
	compare = (~(A ^ B) & 0x000000ff) | (A ^ C) | (~(A ^ D) & 0x000000ff);
	compare_bar = ~compare & 0x000000ff;
	rd = compare | (compare_bar << 8) | (compare << 16) | (compare_bar << 24);

	return rd;
}

int main (int argc, char *argv[]) {

	uint32_t rs1 = 0xed12ed12;
	uint32_t rd;

	rd = ftchk13 (rs1);

	printf("result: %08x\n", rd);
	
	return 0;
}
