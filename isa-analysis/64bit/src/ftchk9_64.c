#include <stdio.h>
#include <stdint.h>

uint64_t ftchk9_64 (uint64_t rs1) {
	uint64_t rd; 	
	uint64_t compare; 	
	uint64_t compare_bar; 	
	uint64_t A, B, C, D, E, F, G, H; 	

	A = (rs1 & 0x00000000000000ff);
	B = (rs1 & 0x000000000000ff00) >> 8;
	C = (rs1 & 0x0000000000ff0000) >> 16;
	D = (rs1 & 0x00000000ff000000) >> 24;
	E = (rs1 & 0x000000ff00000000) >> 32;
	F = (rs1 & 0x0000ff0000000000) >> 40;
	G = (rs1 & 0x00ff000000000000) >> 48;
	H = (rs1 & 0xff00000000000000) >> 56;
	compare = (A ^ B) | (A ^ C) | (A ^ D) | (A ^ E) | (A ^ F) | (A ^ G) | (A ^ H);
	compare_bar = ~compare & 0x000000ff;
	rd = compare | (compare_bar << 8) | (compare << 16) | (compare_bar << 24) | (compare << 32) | (compare_bar << 40) | (compare << 48) | (compare_bar << 56);

	return rd;
}

int main (int argc, char *argv[]) {

	uint64_t rs1 = 0x1212121212121212; 		
	uint64_t rd;

	rd = ftchk9_64 (rs1);

	printf("result: %016lx\n", rd);
	
	return 0;
}
