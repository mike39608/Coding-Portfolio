# This file contains the routing "padding"
# It handles the special case where a file is not even divisible by 3.
# This routine should be called to process the residual bytes in a file 
#
# Signature: void padding(input, output, count);
#       input: the memory location where the three input values are stored
#          byte1 == input+0, byte == input+1, byte3 = input+2
#       output: the memory memory where the four output values are to be stored
#       count: the number of bytes available


padding: nop                 # Handle the last four bytes, which includes padding
        # a0: value
        # s0: s
        # s1: a
        # s2: &base64_table

        # Bookkeeping for Register Allocation 
        #   v0: no return value, but used to store '='
        #   v1: no return value is provided
        #   a0: input: the location in memory
        #   a1: output: the location in memory
        #   a3: number of bytes read

        #   t0:  merged value of: byte1, byte2, byte3
        #   t1: used to hold byte1
        #   t2: used to hold byte2
        #   t3: used to hold byte3
        #   s1: used to hold the first 6-bit chunk
        #   s2: used to hold the second 6-bit chunk
        #   s3: used to hold the third 6-bit chunk, initialized to '='
        #   s4: used to hold the fourth 6-bit chunk, initialized to '='

        li  $s3, '='            # initialize s3 with the padding char
        li  $s4, '='            # initialize s3 with the padding cha

        beq $a3, 2, case2       # branch to the special 
        beq $a3, 1, case1
        j end_switch

case2:  nop                     # 16 bits available, but need 18 for 3 sextents
        lbu $t1, 0($a0)         # load first byte to obtain 8 bits
        lbu $t2, 1($a0)         # load second byte to obtain 16 bits

        sll $t0, $t1, 8         # shift first byte into $t0
        or $t0, $t0, $t2        # or the second byte into $t0
        sll $t0, $t0, 2         # add two bits to get 18 bits
             
        nop                     # extract first sextent
        srl $s1, $t0, 12        # s = value >> 12 & 0x3F;
        andi $s1, $s1, 0x3F 
      
        nop                     # extract second sextent
        srl $s2, $t0, 6         # s = value >> 6   & 0x3F;
        andi $s2, $s2, 0x3F
      
        nop                     # extract third sextent
        andi $s3, $t0, 0x3F      # s = value >> 0   & 0x3F;
                                
        nop                     # encode three sextent
        encode_lookup($s1, base64_table, $s1)
        encode_lookup($s2, base64_table, $s2)
        encode_lookup($s3, base64_table, $s3)

        j end_switch              # goto end_switch
      
case1:  nop                     # 8 bits available, need 12 for 2 sextents
        lbu $t1, 0($a0)         # load first byte and only byte
        sll $t0, $t1, 4         # add 4 bits to get 12
         
        nop                     # extract first sextent
        srl $s1, $t0, 6         # s = value >> 6  & 0x3F;
        andi $s1, $s1, 0x3F
      
        nop                     # extract second sextent
        andi $s2, $t0, 0x3F     # s = value >> 0 & 0x3F;

        nop                     # encode three sextent
        encode_lookup($s1, base64_table, $s1)
        encode_lookup($s2, base64_table, $s2)
        j end_switch
      
end_switch:  nop                  # load the values into the output
        sb $s1, 0($a1)
        sb $s2, 1($a1)
        sb $s3, 2($a1)
        sb $s4, 3($a1)
        jr $ra


