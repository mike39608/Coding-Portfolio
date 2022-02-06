# This file contains the routines to encode and decode Base64.
# There are two different approaches that are provided:
#   1. to map between the two domains via a lookup table
#   2. to map between the two domains via a computation

# The names of the provided routines are:
#   encode_lookup: uses a table called, base64_table, to lookup the equivalent ASCII value
#   encode_compute: uses a switch table to compute the equivalent ASCII value
#   decode_compute:
#   decode_lookup:

	.data      
base64_table:           # The following defines the lookup table for base64
	.ascii "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
     .ascii "abcdefghijklmnopqrstuvwxyz"
     .ascii "0123456789"
     .ascii "+/"
     
	.text

    .macro encode_lookup(%result, %table, %index)
        lb  %result, %table(%index)
    .end_macro

    .macro encode_compute(%result, %index)
        move $a0, %index
        jal _encode_compute
        move %result, $v0
    .end_macro

_encode_compute: nop 
        ## This subroutine computes the following java-like switch statement
        ## This subroutine is expected to be called via the macro "encode_compute"
        ## switch ( chunk ) {
        ##   0..25  : chunk += 0 + 'A' ; // A= 65 // A - Z
        ##            break;
        ##   26..51 : chunk += -26 + 'a'; // a - z
        ##            break;
        ##   52..61 : chunk += -52 + '0'; // 0 - 9
        ##            break;
        ##   62     : chunk = '+';
        ##            break;
        ##   63     : chunk = '/';
        ##            break;
        ##   default: exit()   // You have a bug!
        ## }

  range1: nop                   # For the range from 0..25 -> 'A'..'Z'
        bgt $a0, 25, range2
        addi $v0, $a0, 65       # 65 = -0 + 'A'
        jr $ra

  range2: nop                   # For the range from 26..51 -> 'a'..'z' 
        bgt $a0, 51, range3
        addi $v0, $a0, 71       # 71 = -26 + 'a'
        jr $ra

  range3: nop                   # For the range from 52..61 -> '0'..'9'
        bgt $a0, 61, range4
        addi $v0, $a0, -4       # -4 = -52 + '0'
        jr $ra

  range4: nop                   # For the index 62 = '+'
        bgt $v0, 62, range5
        li $v0, '+'
        jr $ra
 
  range5: nop                   # For the last index 63 = '/'
        li $v0, '/'
        jr $ra

	li $v0, 10 # halt
	syscall                 # You have a bug!


