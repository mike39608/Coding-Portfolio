# Base64 Encoding and Decoding

## Overview
Base64 is widely used encoding scheme to send binary data across the Internet. For example, to send an JPEG image in email, the JPEG image is first encoded into base64 and written to a file.  This base64-based file is then sent as an attachment within an email message.  Your email program can automatically decode the attachment and render the original JPEG image for proper view.

An assemble language is an ideal language to implement the 'base64' encoding algorithm for two primary reasons.  First, the algorithm requires efficient bit-wise manipulations on the raw data. Second, the execution speed of the resulting program is significant faster as compared to an equivalent program written in a high-level langauge.

Your task is to complete the development of the base64 program that is written using MIPS assembly language.  That is to say that you need to 
  1. review the contents of the file "encode.asm"
  2. complete the implementation of the file "encode.asm"
  3. intially test your implementation by running your program within MARS
  4. validate your implementation by running your program via the CLI

For more information see:

1. $ man base64
1. [Wikipedia Base64](https://en.wikipedia.org/wiki/Base64)
1. [COMP122 Base64 Table](https://docs.google.com/spreadsheets/d/1Jlo2GmWvl4bxlPN9GzXsKnl4acyppBWYQjX2S_Bm9oQ)
2. [Base64: Operations](https://docs.google.com/presentation/d/16x4BQnHXk6GkzAkFIvRYphJ2fPAskqk7GWB1sYRuDbY)

## Deliverable:
* a completed version of the encode.asm file

## Encode: Algorithmic Approach

The base64 program being developed here is composed of the following files:
   1.  main.asm: defines the "main" routine that performs file I/O and calls the "encode" subroutine
   2.  syscall_macros.asm: a set of macros to ease the use of various OS system calls
   3.  mapping.asm: includes the "encode_lookup" routine that maps a 6-bit value to an 8-bit value
   4.  padding.asm: defines the "padding" routine that handles the special case for base64 encoding
   5.  encode.asm: a template file for you to use to complete the assignment

Of primary interest to you is the "encode" subroutine, which you need to implement. Performs the following major steps:

  1. Load three bytes from memory
  2. Merge these three bytes into a single 24-bit value
  3. Chop this 24-bit value into for 4 6-bit values
  4. Map each of the 6-bit values into a ASCII charater (which is an 8-bit value)
  5. Store each of these 8-bit values back into memory

These steps are illustrate via the slides that were presented in class.  These slides, [Base64: Operations](https://docs.google.com/presentation/d/16x4BQnHXk6GkzAkFIvRYphJ2fPAskqk7GWB1sYRuDbY), have been update a bit to further aid you in your implementation task.

## Encode: Inital Testing
Within the encode.asm file, there is a testing subroutine called "test_encode".  It calls your "encode" subroutine with the locations of three predefined arrays.  The first array contains the input data used in the Base64 slides. The second array is for your output date.  The third array is the output data computed within the Base64 slides.  

To test your program, perform the following steps using the MARS GUI:

  1. cd to your working directory
  2. java -jar Mars4_5.jar &
  3. open "encode.asm"
  4. assemble the program
  5. run the program
  6. review your output
  7. validate that the output is '+sre'

If all goes well, your test program should print out the string "+sre". This output is based upon the initial values assigned to the in_buffer array in may.  Both the intial values and the expected output is based upon the slides presented in class.

You can continue testing your programing by modifying the values associated with the in_buffer.

To generate more test date, you can run the following commands on the CLI of your computer.  (I presume that you have the base64 program already on your computer. If not, you can use the base64 program on ssh.sandbox.csun.edu)

  ```
  $ echo -n "abc" | base64
  YWJj
  $ # etc.
  ```
Place the values of "abc" as your values for in_buffer.  
  ```
  in_buffer:    .byte 'a'
                .byte 'b'
                .byte 'c'
                .byte 0x00
                .byte 0x00
  ```
When you run the program, you should obtain the output of "YWJj"

## Encode: Validate testing
You can now do further testing to validate your implementation by using larger input.  The best way to perform this testing/validatee is via the CLI.

The output of the following first two commands should be identical.  The outputs have been placed into two files, and then compared via the `diff` command.  Unfortunately, Mars does not allow superfluous warnings to be filtered.  Hence, the output from the Mars need to be filtered by the `grep` command.
  ```
  $ cat encode.asm | base64 > valid_result
  $ cat encode.asm | java -jar Mars4_5.jar sm nc main.asm > my_result
  $ diff valid_result my_result | grep -v "Warning"
  ```
  
Remember to comment out the ``.include "mapping.asm" `` line, which appears on line 63 of encode.asm

# Other Supporting Files:
Feel free to review the other files to see how the entire program is pieced together.

