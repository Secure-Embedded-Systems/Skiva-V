#include <stdio.h>
#include <stdint.h>

uint64_t red2l_64 (uint64_t rs1) {
	uint64_t rd; 	
	rd = ((rs1 & 0x00000000ffffffff) << 32) | (rs1 & 0x00000000ffffffff);
	return rd;
}

int main (int argc, char *argv[]) {

	uint64_t rs1 = 0x000090909090aaaa; 		
	uint64_t rd;

	rd = red2l_64 (rs1);

	printf("result: %016lx\n", rd);
	
	return 0;
}
