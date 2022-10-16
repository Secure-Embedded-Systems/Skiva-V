### GCC for Skiva-V
Either follow the steps below to add the Skiva instructions to RISC-V GCC or download the already-modified GCC from [Google Drive](https://drive.google.com/file/d/1FEf8nLQPpH7jU3kCMxQgIeoR0j_ZAmEg/view?usp=sharing) (works on Ubuntu).

### Add instructions to the risc-v gcc
```sh
$ git clone https://github.com/riscv/riscv-gnu-toolchain
$ git clone https://github.com/riscv/riscv-tools
$ cd riscv-tools
$ git submodule update --init --recursive
$ cd riscv-tools/riscv-opcodes/
```
add these lines to the *opcodes* file
```
# SKIVA
subrot          rd rs1 imm12               14..12=0  6..2=0x02 1..0=3
redl            rd rs1 imm12               14..12=1  6..2=0x02 1..0=3
redh            rd rs1 imm12               14..12=2  6..2=0x02 1..0=3
ftchk           rd rs1 imm12               14..12=3  6..2=0x02 1..0=3
andc32          rd rs1 rs2      31..25=32  14..12=4  6..2=0x02 1..0=3
andc16          rd rs1 rs2      31..25=16  14..12=4  6..2=0x02 1..0=3
andc8           rd rs1 rs2      31..25=0   14..12=4  6..2=0x02 1..0=3
xorc32          rd rs1 rs2      31..25=33  14..12=4  6..2=0x02 1..0=3
xorc16          rd rs1 rs2      31..25=17  14..12=4  6..2=0x02 1..0=3
xorc8           rd rs1 rs2      31..25=1   14..12=4  6..2=0x02 1..0=3
xnorc32         rd rs1 rs2      31..25=34  14..12=4  6..2=0x02 1..0=3
xnorc16         rd rs1 rs2      31..25=18  14..12=4  6..2=0x02 1..0=3
xnorc8          rd rs1 rs2      31..25=2   14..12=4  6..2=0x02 1..0=3
tr2l            rd rs1 rs2      31..25=0   14..12=5  6..2=0x02 1..0=3
tr2h            rd rs1 rs2      31..25=16  14..12=5  6..2=0x02 1..0=3
invtr2l         rd rs1 rs2      31..25=1   14..12=5  6..2=0x02 1..0=3
invtr2h         rd rs1 rs2      31..25=17  14..12=5  6..2=0x02 1..0=3
```
```sh
$ make install
$ cat opcodes-pseudo opcodes opcodes-rvc opcodes-rvc-pseudo opcodes-custom | ./parse-opcodes -c > ~/temp.h
```

Open ~/temp.h and find MATCH_<inst> and MASK_<inst> and DECLARE_INSN lines. 
 
 For example, for subrot the lines are:
 ```
#define MATCH_SUBROT 0xb
#define MASK_SUBROT  0x707f
DECLARE_INSN(subrot, MATCH_SUBROT, MASK_SUBROT)
 ```
 
Next, go to the riscv-gnu-toolchain directory
```sh
$ cd ../../riscv-gnu-toolchain/
```
and add the lines to the files 
- riscv-binutils/include/opcode/riscv-opc.h
- riscv-gdb/include/opcode/riscv-opc.h

Add the following lines to the "riscv_opcodes[]" struct in files
- riscv-binutils/opcode/riscv-opc.c
- riscv-gdb/opcode/riscv-opc.c
```
{"subrot",     0, INSN_CLASS_I,   "d,s,j",  MATCH_SUBROT, MASK_SUBROT, match_opcode, 0 },
{"redl",     0, INSN_CLASS_I,   "d,s,j",  MATCH_REDL, MASK_REDL, match_opcode, 0 },
{"redh",     0, INSN_CLASS_I,   "d,s,j",  MATCH_REDH, MASK_REDH, match_opcode, 0 },
{"ftchk",     0, INSN_CLASS_I,   "d,s,j",  MATCH_FTCHK, MASK_FTCHK, match_opcode, 0 },
{"andc32",     64, INSN_CLASS_I,   "d,s,t",  MATCH_ANDC32, MASK_ANDC32, match_opcode, 0 },
{"andc16",     0, INSN_CLASS_I,   "d,s,t",  MATCH_ANDC16, MASK_ANDC16, match_opcode, 0 },
{"andc8",     0, INSN_CLASS_I,   "d,s,t",  MATCH_ANDC8, MASK_ANDC8, match_opcode, 0 },
{"xorc32",     64, INSN_CLASS_I,   "d,s,t",  MATCH_XORC32, MASK_XORC32, match_opcode, 0 },
{"xorc16",     0, INSN_CLASS_I,   "d,s,t",  MATCH_XORC16, MASK_XORC16, match_opcode, 0 },
{"xorc8",     0, INSN_CLASS_I,   "d,s,t",  MATCH_XORC8, MASK_XORC8, match_opcode, 0 },
{"xnorc32",     64, INSN_CLASS_I,   "d,s,t",  MATCH_XNORC32, MASK_XNORC32, match_opcode, 0 },
{"xnorc16",     0, INSN_CLASS_I,   "d,s,t",  MATCH_XNORC16, MASK_XNORC16, match_opcode, 0 },
{"xnorc8",     0, INSN_CLASS_I,   "d,s,t",  MATCH_XNORC8, MASK_XNORC8, match_opcode, 0 },
{"tr2l",     0, INSN_CLASS_I,   "d,s,t",  MATCH_TR2L, MASK_TR2L, match_opcode, 0 },
{"tr2h",     0, INSN_CLASS_I,   "d,s,t",  MATCH_TR2H, MASK_TR2H, match_opcode, 0 },
{"invtr2l",     0, INSN_CLASS_I,   "d,s,t",  MATCH_INVTR2L, MASK_INVTR2L, match_opcode, 0 },
{"invtr2h",     0, INSN_CLASS_I,   "d,s,t",  MATCH_INVTR2H, MASK_INVTR2H, match_opcode, 0 },
 ```
 
Finally, configure and install gcc:
```sh
$ # for 32 bit:
$ ./configure --prefix=/opt/riscv --with-arch=rv32gc --with-abi=ilp32d
$ [sudo] make clean
$ [sudo] make
$ # for 64 bit:
$ ./configure --prefix=/opt/riscv
$ [sudo] make clean
$ [sudo] make
```
