#include <stdio.h>
#include <stdint.h>

uint32_t subrot2 (uint32_t rs1) {
	uint32_t rd; 	
	rd = ((rs1 << 1) & 0xaaaaaaaa) | ((rs1 >> 1) & 0x55555555);
	return rd;
}

int main (int argc, char *argv[]) {

	uint32_t rs1 = 0xaaaaaaaa; 		
	uint32_t rd;

	rd = subrot2 (rs1);

	printf("result: %08x\n", rd);
	
	return 0;
}
