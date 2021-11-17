#include <stdio.h>
#include <stdint.h>

uint32_t red6h (uint32_t rs1) {
	uint32_t rd; 	
	uint32_t byte; 

	byte = (rs1 & 0xff000000) >> 24;
	rd = byte | (byte << 8) | (byte << 16) | (byte << 24);

	return rd;
}

int main (int argc, char *argv[]) {

	uint32_t rs1 = 0xaa000000; 		
	uint32_t rd;

	rd = red6h (rs1);

	printf("result: %08x\n", rd);
	
	return 0;
}
