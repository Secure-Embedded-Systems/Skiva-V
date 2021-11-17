#include <stdio.h>
#include <stdint.h>

uint32_t xnorc8 (uint32_t rs1, uint32_t rs2) {
	uint32_t rd; 	

	rd = (~(rs1 ^ rs2) & 0x000000ff) | ((rs1 ^ rs2) & 0x0000ff00) | (~(rs1 ^ rs2) & 0x00ff0000) | ((rs1 ^ rs2) & 0xff000000); 

	return rd;
}

int main (int argc, char *argv[]) {
	
	uint32_t rs1 = 0x00001234; 		
	uint32_t rs2 = 0xaf231234; 		
	uint32_t rd;

	rd = xnorc8 (rs1, rs2);

	printf("result: %08x\n", rd);
	
	return 0;
}
