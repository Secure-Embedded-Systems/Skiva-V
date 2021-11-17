#include <stdio.h>
#include <stdint.h>

uint32_t ftchk3 (uint32_t rs1) {
	uint32_t rd; 	
	uint32_t compare; 	

	compare = (rs1 & 0x0000ffff) ^ ((rs1 & 0xffff0000) >> 16);
	rd = (compare & 0x0000ffff) | (compare << 16); 

	return rd;
}

int main (int argc, char *argv[]) {

	uint32_t rs1 = 0x12341234; 		
	uint32_t rd;

	rd = ftchk3 (rs1);

	printf("result: %08x\n", rd);
	
	return 0;
}
