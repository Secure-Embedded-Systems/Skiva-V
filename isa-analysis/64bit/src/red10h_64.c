#include <stdio.h>
#include <stdint.h>

uint64_t red10h_64 (uint64_t rs1) {
	uint64_t rd; 	
	uint64_t byte; 

	byte = (rs1 & 0x00000000ff000000) >> 24;
	rd = byte | (byte << 8) | (byte << 16) | (byte << 24) | (byte << 32) | (byte << 40) | (byte << 48) | (byte << 56);

	return rd;
}

int main (int argc, char *argv[]) {

	uint64_t rs1 = 0x00000012345678aa; 		
	uint64_t rd;

	rd = red10h_64 (rs1);

	printf("result: %016lx\n", rd);
	
	return 0;
}
