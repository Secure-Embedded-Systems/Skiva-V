#include <stdio.h>
#include <stdint.h>

uint32_t red2h (uint32_t rs1) {
	uint32_t rd; 	
	rd = ((rs1 & 0xffff0000) >> 16) | (rs1 & 0xffff0000);
	return rd;
}

int main (int argc, char *argv[]) {

	uint32_t rs1 = 0xaaaa0000;
	uint32_t rd;

	rd = red2h (rs1);

	printf("result: %08x\n", rd);
	
	return 0;
}
