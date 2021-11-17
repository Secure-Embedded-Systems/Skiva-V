#include <stdio.h>
#include <stdint.h>

uint32_t red7h (uint32_t rs1) {
	uint32_t rd; 	
	uint32_t byte; 
	uint32_t byte_bar; 

	byte = (rs1 & 0xff000000) >> 24;
	byte_bar = (~rs1 & 0xff000000) >> 24;
	rd = byte | (byte_bar << 8) | (byte << 16) | (byte_bar << 24);

	return rd;
}

int main (int argc, char *argv[]) {

	uint32_t rs1 = 0xaa000000; 		
	uint32_t rd;

	rd = red7h (rs1);

	printf("result: %08x\n", rd);
	
	return 0;
}
