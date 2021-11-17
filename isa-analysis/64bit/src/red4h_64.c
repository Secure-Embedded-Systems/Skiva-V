#include <stdio.h>
#include <stdint.h>

uint64_t red4h_64 (uint64_t rs1) {
	uint64_t rd; 	
	uint64_t hword; 

	hword = (rs1 & 0x00000000ffff0000) >> 16;
	rd = hword | (hword << 16) | (hword << 32) | (hword << 48);

	return rd;
}

int main (int argc, char *argv[]) {

	uint64_t rs1 = 0x00fabc00a12a0230; 		
	uint64_t rd;

	rd = red4h_64 (rs1);

	printf("result: %016lx\n", rd);
	
	return 0;
}
