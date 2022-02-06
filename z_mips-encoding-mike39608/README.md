# MIPS Instruction Encoding:

## Register encoding:

For each of the following registers, provide the binary coding of each:

  1. $at : 00001
  1. $a1 : 0 0101
  1. $fp : 11110
  1. $t0 : 1000
  1. $13 : 1101


## Format determination:

Using the MIPS Cheat sheet, determine the encoding format for each of the following instructions:

  1. bge $5, $2, label: pseudo-instruction
  1. add $5, $2, $2:	R
  1. addi $5, $2, 2:	I
  1. mfhi $5: R			
  1. slt $5, $2, $2: R	
  1. lh  $5, 2($2): I		
  1. beq $5, $2, label: I	
  1. sw  $5, 2($2): I		
  1. move $5, $2: pseudo-instruction		
  1. j label: J				
  1. jalr $5: R	

## Function encoding:

For each of the following R instructions, provide the hexidecimal and binary encoding representing the function (func).

  1. multu $5, $2:		19, 011001
  1. add $5, $2, $2:	        20, 011010
  1. slt $5, $2, $2:	        2a. 101010
  1. syscall:			c,  001100
  1. srlv $5, $2, $2:	        6,  000110


## R format Encoding:
For the following instructions, provide the binary encoding associated with the instruction.  You answer should separate the binary bits into appropriate groups for visual clarity.

  1. \<instruction\>:   000000 00000 00000 00000 00000 000000
  1. multu $5, $2:		000000 00101 00010 00000 00000 011001
  1. add $5, $2, $2:	        000000 00101 00010 00101 00000 011010
  1. add $7, $12, $fp:	        000000 01100 11110 00111 00000 011010
  1. slt $ra, $gp, $zero:	000000 11100 00000 11111 00000 101010
  1. syscall:			000000 00000 00000 00000 00000 000000
  1. srlv $5, $2, $2:	        000000 00010 00010 00101 00000 000110





