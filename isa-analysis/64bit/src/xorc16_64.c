#include <stdio.h>
#include <stdint.h>

uint64_t xorc16_64 (uint64_t rs1, uint64_t rs2) {
	uint64_t rd; 	

	rd = ((rs1 ^ rs2) & 0x0000ffff0000ffff) | (~(rs1 ^ rs2) & 0xffff0000ffff0000);

	return rd;
}

int main (int argc, char *argv[]) {

	uint64_t rs1 = 0x0000000000001234; 		
	uint64_t rs2 = 0xabcdef12af231234; 		
	uint64_t rd;

	rd = xorc16_64 (rs1, rs2); // 5432ef1250dc0000

	printf("result: %016lx\n", rd);
	
	return 0;
}
