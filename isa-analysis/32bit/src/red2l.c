#include <stdio.h>
#include <stdint.h>

uint32_t red2l (uint32_t rs1) {
	uint32_t rd; 	
	rd = ((rs1 & 0x0000ffff) << 16) | (rs1 & 0x0000ffff);
	return rd;
}

int main (int argc, char *argv[]) {

	uint32_t rs1 = 0x0000aaaa; 		
	uint32_t rd;

	rd = red2l (rs1);

	printf("result: %08x\n", rd);
	
	return 0;
}
