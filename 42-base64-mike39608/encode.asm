# A simple subroutine to encode a 24-bit string (stored within 3 bytes)
# into four base64 characters.
#
# This subroutine illustrates the effective use of shifts and masks
# to achieve a desired output.
#
# Signature: void encode(input, output);
#	input: the memory location where the three input values are stored
#	   byte1 == input+0, byte == input+1, byte3 = input+2
#	output: the memory memory where the four output values are to be stored
#
# Method: 
#    Load three bytes from the input location (totaling 24 bits;  3 * 8 == 24)
#    Merge bytes into one register      
#    Chop the bytes into 4 6-bit chunks
#    Map each of the 4 6-bit chunks into an 8-bit ASCII value
#    Store each of these 8-bit ASCII values to the output location
#
# See Also: https://docs.google.com/presentation/d/16x4BQnHXk6GkzAkFIvRYphJ2fPAskqk7GWB1sYRuDbY

##################################################################
# The next section is provide a testing vehical for you
# This section is not needed for the final implementation

	.data

test_in_buffer:  
	.byte 0xFA  # Create a buffer for the three input bytes
        .byte 0xCA  # This values 
        .byte 0xDE
        .byte 0x00
        .byte 0x00  # Provide an extra Null byte

        .align 2    # Force alignment on a word boundary
test_out_buffer:  
	.byte 0xEF  # Create a buffer for the four output bytes 
        .byte 0xBE
        .byte 0xAD
        .byte 0xDE
        .byte 0x00  # Provide an extra Null byte

	.align 2    # Force alignment on a word boundary
answer:	.byte '+'  # # Create a buffer that holds the answer the test case
        .byte 's'
        .byte 'r'
        .byte 'e'
        .byte 0x00  # Provide an extra Null byte


	.text
	
test_encode: nop	# a temporary routine used to test the encode subroutine
	la $a0, test_in_buffer
	la $a1, test_out_buffer
	jal encode
	
	li $v0, 4  # print_string
	la $a0, test_out_buffer
	syscall

	li $v0, 10 # halt
	syscall
	
	# comment out the following include file when running the full program
	.include "mapping.asm"

# end testing vehical
#################################################


encode:  nop    #  Routine to transform 24-bits to 4 base64 characters
	# Use the following register allocation 
	#
	# Bookkeeping for Register Allocation 
	#   v0: no return value is provided
	#   v1: no return value is provided
	#   a0: input: the location in memory
	#   a1: output: the location in memory
	#   t0: the merged value of: byte1, byte2, byte3
	#   t1: used to hold byte1
	#   t2: used to hold byte2
	#   t3: used to hold byte3
	#   s1: used to hold the first 6-bit chunk
	#   s2: used to hold the second 6-bit chunk
	#   s3: used to hold the third 6-bit chunk
	#   s4: used to hold the fourth 6-bit chunk
	
load:	lbu $t1, 0($a0)
	lbu $t2, 1($a0)
	lbu $t3, 2($a0)			# Load in three bytes
	
merge:  add $t4, $t2, $t1
	add $t4, $t3, $t4                      # Merge the three bytes	

shift:  srl $t1, $t2, 10	## First, shift each byte to the proper position
meld:	nop			## Second, meld the three bytes together
chop: 	nop                     # Chop into 4 pieces
split:	nop			## First, split into 4 pieces 
slide:  nop			## Second, slide the 4 pieces into postion

map: 	nop			# Map the 6-bit pattern to 8-bit pattern
   	encode_lookup($s1, base64_table, $s1)
   	encode_lookup($s2, base64_table, $s2)
   	encode_lookup($s3, base64_table, $s3)
   	encode_lookup($s4, base64_table, $s4)
   	
store:	nop			# Store each of the 4 new bytes


	jr $ra
   	
