#include <stdio.h>
#include <stdint.h>

uint64_t red5h_64 (uint64_t rs1) {
	uint64_t rd; 	
	uint64_t hword; 
	uint64_t hword_bar; 

	hword = (rs1 & 0x00000000ffff0000) >> 16;
	hword_bar = (~rs1 & 0x00000000ffff0000) >> 16;
	rd = hword | (hword_bar << 16) | (hword << 32) | (hword_bar << 48);

	return rd;
}

int main (int argc, char *argv[]) {

	uint64_t rs1 = 0x00001234aa00fedb;
	uint64_t rd;

	rd = red5h_64 (rs1);

	printf("result: %016lx\n", rd);
	
	return 0;
}
