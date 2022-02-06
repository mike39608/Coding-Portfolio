# Exam #1: Data Formats and Encodings for Computing
---
## Directions:

### To Get Started:
1. Clone this repository to your desktop computer
1. Copy the "README.md" file to "answers.md"
1. Add the "answers.md" file to your local repository ``git add answers.md``
1. Commit this file to your local repository ``git commit -m 'starting the examination' ``
1. Push this file to the remote repository ``git push``

### Work on the Assignment
1. Edit the "answers.md" file to incorporate your answers.
1. Your answers need to be positioned in the file correctly.
   - use the provided examples and templates as a guide for proper placement of answers
   - provide an answer to every line that contains an "answer" comment.
   - placement of your answer needs to be to the left of the  "answer" comment.
   - use additional spacing to ensure your answer is _easy_ to read
   ```
    An automated process will be used to grade this test. As such, it is important
    that you position your answers appropriately. (It is okay if "answer" comment 
    is repositioned, as long as it remains on the same line.)
   ```
1. Make sure you add your name in the space provided.


### To Submit Your Work
* Execute the following commands:
  ```
  git add answers.md
  git commit -m 'completed the examination'
  git push
  ```
* You can validate what you have submitted by reviewing your remote repository on github.com.
* You may execute a ``git push`` any number of times before the submission deadline.

## Alternative Directions:
   * Can you complete this exam via the github website?
   * Yes, you may. But you should only do this if this is your only alternative.

---
# Exam #1: Data Formats and Encodings for Computing
### Date: October 21, 2021
### Allocated time:  1.5 hours (with a 10 minute cushion)
### Exam Times
* Morning Class:  9:05am -- 10:45  
* Afternoon Class:  2:05pm -- 3:45

## Name: Michael Peters                           <!-- answer -->


### BCD: Binary Coded Decimals  

Solve the following addition problems using BCD arithmetic. Show your work by modifying the template provided.

  1. 0225 + 1444
     - decimal answer: 1669               <!-- answer: BCD: 0225 + 1444 -->
     - encoded answer: 0001 0110 0110 1001               <!-- answer: -->
     
     ```
       00000 00000 00000 01000    <!-- answer: carries -->
        0000  0010  0010  0101    <!-- answer: op1 encoding -->
     +  0001  0100  0100  0100    <!-- answer: op2 encoding -->
     - ----- ----- ----- -----
        0001  0110  0110  1001    <!-- answer: sum encoding -->

     0  0000 00000 00000 00000    <!-- answer: carries for the corrective step -->
        0001  0110  0110  1001    <!-- answer: sum encoding -->
     +  0000  0000  0000  0000    <!-- answer: corrective step -->
     -- ----- ----- ----- ----
     0  0001  0110  0110  1001    <!-- answer: final sum -->
     ```

  1. 0225 + 1016
     - decimal answer: 1241               <!-- answer: BCD: 0225 + 1016  -->
     - encoded answer: 0001 0010 0100 0001               <!-- answer: -->
     ```
       00000 00000 00000 01000    <!-- answer: carries -->
        0000  0010  0010  0101    <!-- answer: op1 encoding -->
     +  0001  0000  0001  0110    <!-- answer: op2 encoding -->
     - ----- ----- ----- -----
        0001  0010  0011  1011    <!-- answer: sum encoding -->

     0  0000 00000 00110 11100    <!-- answer: carries for the corrective step -->
        0001  0010  0011  1011    <!-- answer: sum encoding -->
     +  0000  0000  0000  0110    <!-- answer: corrective step -->
     -- ----- ----- ----- ----
     0  0001  0010  0100  0001    <!-- answer: final sum -->
     ```

 1. 09 + 09
     - decimal answer: 18               <!-- answer: BCD: 09 + 09 -->
     - encoded answer: 0001 0010               <!-- answer: -->
  
    ```
     00000 10010    <!-- answer: carries -->
      0000  1001    <!-- answer: op1 encoding -->
    + 0000  1001    <!-- answer: op2 encoding -->
    ------ -----
      0001  0010    <!-- answer: sum encoding -->

    0 0000 00000    <!-- answer: carries for the corrective step -->
      0001  0010    <!-- answer: sum encoding -->
    + 0000  0000    <!-- answer: corrective step -->
    - ----- ----
    0 0001  0010    <!-- answer: final sum -->
    ```

### Floating Point

The following tables provides key information about floating point encoding.

| Encoding  | Total | Sign | Exponent | Mantissa |  Bias |
| --------- | ----: | :--: | -------: | -------: | ----: |
| Comp122   |     8 |  1   |  3       |        4 |  ``011`` (3) |
| Binary16  |    16 |  1   |  5       |       10 |  ``01111`` (15) |
| Binary32  |    32 |  1   |  8       |       23 |  ``01111111`` (127) |
| Binary64  |    64 |  1   |  11      |       52 |  ``01111111111`` (1024) |
| Binary128 |   128 |  1   |  15      |      112 | ``011111111111111`` (16383) |



1. Consider the following binary real number: ``2# 00.00001011011``
   - The representation of this number in scientific notation is: 1.011011 x 2 ^-101  <!-- answer: floating point-->
   - What is the binary representation of the stored exponent:
     - for Binary16: 0 01010 0110 1100 00                              <!-- answer: -->
     - for Binary64: 0 011 1111 1011 0110 1100 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000 0000         <!-- answer: -->
   - What is the value of the mantissa:
     - for Comp122: 4                                                  <!-- answer: -->
     - for Binary16: 10                                                <!-- answer: -->

1. For the binary pattern ``0110101101011010``, which is an encoded Binary16, provide the following information:
   - the stored exponent: 11010                                     <!-- answer: -->
   - the mantissa: 1101 0110 10                                     <!-- answer: -->
   - the equivalent number in base 2 scientific notation: 1.1101011010 x 2^1011          <!-- answer: -->

### Binary Real
1. Consider the following number:  ``2# 101.101``
   - Convert the number to decimal: 5.5    <!-- answer: for 101.101 -->
   - (Hint: Expanded Notation)


### Subtraction with Complements

Calculate the 8-bit two's complement for each of the following numbers:
 1. 5: 1011                                                            <!-- answer: -->
 1. 17: 1110 1111                                                      <!-- answer: -->
 1. 32: 1110 0000                                                      <!-- answer: -->
 1. 67: 1011 1101                                                      <!-- answer: -->
 1. 110: 1001 0010                                                     <!-- answer: -->

Solve the following addition/subtraction problems using 8-bit binary arithmetic. Show your work by modifying the template provided.

 1. -17 + 32
     - decimal answer: 15               <!-- answer:  -17 + 32 -->
     - encoded answer: 1 0000 1111      <!-- answer: -->
     
     ```
       1100 0000     <!-- answer: carries -->
       1110 1111     <!-- answer: op1 encoding -->
     + 0010 0000     <!-- answer: op2 encoding -->
     -----------
     1 0000 1111     <!-- answer: sum encoding -->
     ```

 1. 17 - 67
     - decimal answer: -50               <!-- answer:  17 - 67 -->
     - encoded answer: 0 1100 1110       <!-- answer: -->
     
     ```
       0110 0010     <!-- answer: carries -->
       0001 0001     <!-- answer: op1 encoding -->
     + 1011 1101     <!-- answer: op2 encoding -->
     -----------
     0 1100 1110     <!-- answer: sum encoding -->
     ```


  1. -5 - -110    
     - decimal answer: 105               <!-- answer: -5 - -110 -->
     - encoded answer: 0110 1001         <!-- answer: -->
     
     ```
       0000 1100     <!-- answer: carries -->
       0110 1110     <!-- answer: op1 encoding -->
     + 0000 1011     <!-- answer: op2 encoding -->
     -----------
     0 0111 1001     <!-- answer: sum encoding -->
     ```

### Bit-Stream Separation

For the following bit sequence

  - ``010110011110101010111101101100001001101101001101``

For each of the following domains, identify each of the individual componments that make up the bit sequence.
Note that you do NOT have decode the string, just identify the individual components.

Domains:
   1. Octal String: 010 110 011 110 101 010 111 101 101 100 001 001 101 101 001 101                                   <!-- answer: -->
   1. Hex String: 0101 1001 1110 1010 1011 1101 1011 0000 1001 1011 0100 1101                                     <!-- answer: -->
   1. Base64 String: 010110 011110 101010 111101 101100 001001 101101 001101                                  <!-- answer: -->
   1. UTF-8 String: 01011001 11101010 10111101 10110000 10011011 01001101                                   <!-- answer: -->
 

### Conversions Between Powers of Two
For each of the following numbers, convert then into the indicated base. 

  1. 16# 1011
     - 2# 0001 0000 0001 0001                          <!-- answer: -->
     - 8# 10 021                                       <!-- answer: -->
     - 16# 1011                                        <!-- answer: -->

  1. 8# 10101011
     - 2# 0010 0000 1000 0010 0000 1001                <!-- answer: -->
     - 8# 10101011                                     <!-- answer: -->
     - 16# 20 8209                                     <!-- answer: -->

  1. 2# 10101110 11101010 01011101 
     - 2# 10101110 11101010 01011101                     <!-- answer: -->
     - 8# 53 565 135                                     <!-- answer: -->
     - 16# AEEA5D                                       <!-- answer: -->

   1. 4# 1010101
     - 2# 01000100010001                          <!-- answer: -->
     - 8# 10 421                                        <!-- answer: -->
     - 16# 1111                                       <!-- answer: -->

### Conversion from Base 10 to Base 2

  1. Convert ``1453`` (base 10) to a binary number:
     - show all your work below.
     To do this, you would first get the decimal and divide by 2. If there is a
     remainder, write 1. If it divides evenly, write 0. Do this until the whole
     number is 0. Then starting from the right to the left, right down
     1s and 0s to then get your binary value.                                             <!-- answer: -->


