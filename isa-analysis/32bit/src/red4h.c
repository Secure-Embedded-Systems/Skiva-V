#include <stdio.h>
#include <stdint.h>

uint32_t red4h (uint32_t rs1) {
	uint32_t rd; 	
	uint32_t byte; 

	byte = (rs1 & 0x0000ff00) >> 8;
	rd = byte | (byte << 8) | (byte << 16) | (byte << 24);

	return rd;
}

int main (int argc, char *argv[]) {

	uint32_t rs1 = 0x0000aa00; 		
	uint32_t rd;

	rd = red4h (rs1);

	printf("result: %08x\n", rd);
	
	return 0;
}
