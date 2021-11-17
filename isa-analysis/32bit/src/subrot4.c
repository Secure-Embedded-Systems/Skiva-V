#include <stdio.h>
#include <stdint.h>

uint32_t subrot4 (uint32_t rs1) {
	uint32_t rd; 	
	rd = ((rs1 << 1) & 0xeeeeeeee) | ((rs1 >> 3) & 0x11111111);
	return rd;
}

int main (int argc, char *argv[]) {

	uint32_t rs1 = 0x88888888; 		
	uint32_t rd;

	rd = subrot4 (rs1);

	printf("result: %08x\n", rd);
	
	return 0;
}
