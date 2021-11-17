#include <stdio.h>
#include <stdint.h>

uint64_t red2h_64 (uint64_t rs1) {
	uint64_t rd; 	
	rd = ((rs1 & 0xffffffff00000000) >> 32) | (rs1 & 0xffffffff00000000);
	return rd;
}

int main (int argc, char *argv[]) {

	uint64_t rs1 = 0xaaaa123456780000;
	uint64_t rd;

	rd = red2h_64 (rs1);

	printf("result: %016lx\n", rd);
	
	return 0;
}
