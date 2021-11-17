#include <stdio.h>
#include <stdint.h>

uint64_t red12l_64 (uint64_t rs1) {
	uint64_t rd; 	
	uint64_t byte; 

	byte = (rs1 & 0x000000ff00000000) >> 32;
	rd = byte | (byte << 8) | (byte << 16) | (byte << 24) | (byte << 32) | (byte << 40) | (byte << 48) | (byte << 56);

	return rd;
}

int main (int argc, char *argv[]) {

	uint64_t rs1 = 0xabcdef12345678aa; 		
	uint64_t rd;

	rd = red12l_64 (rs1);

	printf("result: %016lx\n", rd);
	
	return 0;
}
