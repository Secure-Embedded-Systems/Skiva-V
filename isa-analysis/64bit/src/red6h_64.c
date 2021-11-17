#include <stdio.h>
#include <stdint.h>

uint64_t red6h_64 (uint64_t rs1) {
	uint64_t rd; 	
	uint64_t hword; 

	hword = (rs1 & 0xffff000000000000) >> 48;
	rd = hword | (hword << 16) | (hword << 32) | (hword << 48);

	return rd;
}

int main (int argc, char *argv[]) {

	uint64_t rs1 = 0xaa12345678000000; 		
	uint64_t rd;

	rd = red6h_64 (rs1);

	printf("result: %016lx\n", rd);
	
	return 0;
}
