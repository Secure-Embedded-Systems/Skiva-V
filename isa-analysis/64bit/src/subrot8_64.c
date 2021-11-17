#include <stdio.h>
#include <stdint.h>

uint64_t subrot8_64 (uint64_t rs1) {
	uint64_t rd; 	
	rd = ((rs1 << 1) & 0xfefefefefefefefe) | ((rs1 >> 7) & 0x0101010101010101);
	return rd;
}

int main (int argc, char *argv[]) {

	uint64_t rs1 = 0x8080808080808080;
	uint64_t rd;

	rd = subrot8_64 (rs1);

	printf("result: %016lx\n", rd);
	
	return 0;
}
