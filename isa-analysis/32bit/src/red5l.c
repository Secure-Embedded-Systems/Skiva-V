#include <stdio.h>
#include <stdint.h>

uint32_t red5l (uint32_t rs1) {
	uint32_t rd; 	
	uint32_t byte; 
	uint32_t byte_bar; 

	byte = (rs1 & 0x000000ff);
	byte_bar = (~rs1 & 0x000000ff);
	rd = byte | (byte_bar << 8) | (byte << 16) | (byte_bar << 24);

	return rd;
}

int main (int argc, char *argv[]) {

	uint32_t rs1 = 0x000000aa; 		
	uint32_t rd;

	rd = red5l (rs1);

	printf("result: %08x\n", rd);
	
	return 0;
}
