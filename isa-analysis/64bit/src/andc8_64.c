#include <stdio.h>
#include <stdint.h>

uint64_t andc8_64 (uint64_t rs1, uint64_t rs2) {
	uint64_t rd; 	

	rd = ((rs1 & rs2) & 0x00ff00ff00ff00ff) | ((rs1 | rs2) & 0xff00ff00ff00ff00);

	return rd;
}

int main (int argc, char *argv[]) {

	uint64_t rs1 = 0x0000000000001234; 		
	uint64_t rs2 = 0xabcdef12af231234; 		
	uint64_t rd;

	rd = andc8_64 (rs1, rs2); // ab00ef00af001234

	printf("result: %016lx\n", rd);
	
	return 0;
}
