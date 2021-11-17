#include <stdio.h>
#include <stdint.h>

uint64_t subrot2_64 (uint64_t rs1) {
	uint64_t rd; 	
	rd = ((rs1 << 1) & 0xaaaaaaaaaaaaaaaa) | ((rs1 >> 1) & 0x5555555555555555);
	return rd;
}

int main (int argc, char *argv[]) {

	uint64_t rs1 = 0xaaaaaaaaaaaaaaaa; 		
	uint64_t rd;

	rd = subrot2_64 (rs1);

	printf("result: %016lx\n", rd);
	
	return 0;
}
