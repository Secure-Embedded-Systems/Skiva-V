#include <stdio.h>
#include <stdint.h>

uint64_t subrot4_64 (uint64_t rs1) {
	uint64_t rd; 	
	rd = ((rs1 << 1) & 0xeeeeeeeeeeeeeeee) | ((rs1 >> 3) & 0x1111111111111111);
	return rd;
}

int main (int argc, char *argv[]) {

	uint64_t rs1 = 0x8888888888888888;
	uint64_t rd;

	rd = subrot4_64 (rs1);

	printf("result: %016lx\n", rd);
	
	return 0;
}
