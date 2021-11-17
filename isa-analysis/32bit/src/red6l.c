#include <stdio.h>
#include <stdint.h>

uint32_t red6l (uint32_t rs1) {
	uint32_t rd; 	
	uint32_t byte; 

	byte = (rs1 & 0x00ff0000) >> 16;
	rd = byte | (byte << 8) | (byte << 16) | (byte << 24);

	return rd;
}

int main (int argc, char *argv[]) {

	uint32_t rs1 = 0x00aa0000; 		
	uint32_t rd;

	rd = red6l (rs1);

	printf("result: %08x\n", rd);
	
	return 0;
}
