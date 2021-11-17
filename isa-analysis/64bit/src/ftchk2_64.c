#include <stdio.h>
#include <stdint.h>

uint64_t ftchk2_64 (uint64_t rs1) {
	uint64_t rd; 	
	uint64_t compare; 	

	compare = (rs1 & 0x00000000ffffffff) ^ ((rs1 & 0xffffffff00000000) >> 32);
	rd = compare | (compare << 32); 

	return rd;
}

int main (int argc, char *argv[]) {

	uint64_t rs1 = 0x1234000012340000; 		
	uint64_t rd;

	rd = ftchk2_64 (rs1);

	printf("result: %016lx\n", rd);
	
	return 0;
}
