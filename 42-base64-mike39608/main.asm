# This file is the main subroutine for the base64 program
#
# The program reads input from stdio, which means
#   1. that you can't test it via the GUI
#      - there is no way to signal ^d
#   2. that to test the you need to run from the CLI
#
# Usage: java -jar Mars.jar sm main.asm <<< "encode this string" 
#      - sm: indicates start with the "main" subroutine
#      - main.asm: is the initial file to assemble
#      - <<<: the CLI directive to indicate that the input string is the next token
#      - "encode this string": the string to encode
# Output:
#   ZW5jb2RlIHRoaXMgc3RyaW5n
#
# Note: Superfluous warning messages will be issued by the Mars
#   E.g.: Warning in driver.asm line 4 column 23: "0xDE" is out-of-range for a signed value and possibly truncated


                .data

                .align 2    # Force alignment on a word boundary
in_buffer:      .byte 0xDE  # Create a buffer for the max of 4 character input
                .byte 0xAD
                .byte 0xEF
                .byte 0x00
                .byte 0x00  # Provide an extra Null byte

                .align 2    # Force alignment on a word boundary
out_buffer:     .byte 0XFE  # Create a buffer for the max of 4 character output
                .byte 0xAD
                .byte 0xAD
                .byte 0xEF
                .byte 0x00  # Provide an extra Null byte

                .text

                .include "syscall_macros.asm"
                .include "mapping.asm"  # A support file to map a 6-bit value to an 8-bit value
                .include "padding.asm"  # A support file to handle any necessary padding
                .include "encode.asm"   # The file writtent by the student to perform base64 encoding
                
                .globl main
                
##################################
main:       nop
            # Bookkeeping for Register Allocation 
        
        # t6: &in_buffer
        # t7: &out_buffer
        # t8: bytes_read:
        # t9: constant 3
            
        # Initialize
        la $t6, in_buffer
        la $t7, out_buffer
        li $t9, 3
  
        move $t8, $t9                # bytes_read = three;

        #########################
_again: bne $t8, 3, _end_while       # while (bytes_read == 3) {
          li $v0, 14                 #   count = file_read(0, &buffer, 3);
          li $a0, 0
          move $a1, $t6            
          move $a2, $t9              
          syscall
          move $t8, $v0
          ###################      
          bne $t8, 3, _if_end1       #   if (bytes_read == three) {
            move $a0, $t6
            move $a1, $t7
            jal encode               #      encode(&in_buffer, &out_buffer);
            print_string(out_buffer) #      print("%s", out_buffer);
_if_end1:   nop                      #    }
          ###################
          j _again

_end_while:  nop                     # }   
        #########################               

        ###################
        beq $t8, $zero, _end_if2     # if (bytes_read != 0) {
          move $a0, $t6
          move $a1, $t7
          move $a3, $t8              #   padding(&in_buffer, &out_buffer, bytes_read);
          jal padding
          print_string(out_buffer)   #   print("%s", out_buffer);
_end_if2:  nop                       # }
        ###################

_done:  halt()                       # exit 0;

##################################      
##
## Correspoiding C code for the subroutine
##
## main () {
##   byte in_buffer[3];
##   byte out_buffer[4];
##   register three = 3;
##
##   register bytes_read;
##
##   bytes_read = three;
##   while (bytes_read == 3) {
##       count = file_read(0, &in_buffer, three);
##       if (bytes_read == three) {
##         encode(&in_buffer, &out_buffer);
##         print("%s", out_buffer);
##       }
##   }
##   if (bytes_read != 0) {
##     padding(&in_buffer, &out_buffer, bytes_read);
##     print("%s", out_buffer);
##   }
##   exit 0;
## }
## 
