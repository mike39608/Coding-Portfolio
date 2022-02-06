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

## Name:                            <!-- answer -->


### BCD: Binary Coded Decimals  

Solve the following addition problems using BCD arithmetic. Show your work by modifying the template provided.

  1. 0225 + 1444
     - decimal answer:                <!-- answer: BCD: 0225 + 1444 -->
     - encoded answer:                <!-- answer: -->
     
     ```
       00000 00000 00000 00000    <!-- answer: carries -->
        0000  0000  0000  0000    <!-- answer: op1 encoding -->
     +  0000  0000  0000  0000    <!-- answer: op2 encoding -->
     - ----- ----- ----- -----
        0000  0000  0000  0000    <!-- answer: sum encoding -->

     0  0000 00000 00000 00000    <!-- answer: carries for the corrective step -->
        0000  0000  0000  0000    <!-- answer: sum encoding -->
     +  0000  0000  0000  0000    <!-- answer: corrective step -->
     -- ----- ----- ----- ----
     0  0000  0000  0000  0000    <!-- answer: final sum -->
     ```

  1. 0225 + 1016
     - decimal answer:                <!-- answer: BCD: 0225 + 1016  -->
     - encoded answer:                <!-- answer: -->
     ```
       00000 00000 00000 00000    <!-- answer: carries -->
        0000  0000  0000  0000    <!-- answer: op1 encoding -->
     +  0000  0000  0000  0000    <!-- answer: op2 encoding -->
     - ----- ----- ----- -----
        0000  0000  0000  0000    <!-- answer: sum encoding -->

     0  0000 00000 00000 00000    <!-- answer: carries for the corrective step -->
        0000  0000  0000  0000    <!-- answer: sum encoding -->
     +  0000  0000  0000  0000    <!-- answer: corrective step -->
     -- ----- ----- ----- ----
     0  0000  0000  0000  0000    <!-- answer: final sum -->
     ```

 1. 09 + 09
     - decimal answer:                <!-- answer: BCD: 09 + 09 -->
     - encoded answer:                <!-- answer: -->
  
    ```
     00000 00000    <!-- answer: carries -->
      0000  0000    <!-- answer: op1 encoding -->
    + 0000  0000    <!-- answer: op2 encoding -->
    ------ -----
      0000  0000    <!-- answer: sum encoding -->

    0 0000 00000    <!-- answer: carries for the corrective step -->
      0000  0000    <!-- answer: sum encoding -->
    + 0000  0000    <!-- answer: corrective step -->
    - ----- ----
    0 0000  0000    <!-- answer: final sum -->
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
   - The representation of this number in scientific notation is:    <!-- answer: floating point-->
   - What is the binary representation of the stored exponent:
     - for Binary16:                                                 <!-- answer: -->
     - for Binary64:                                                 <!-- answer: -->
   - What is the value of the mantissa:
     - for Comp122:                                                   <!-- answer: -->
     - for Binary16:                                                 <!-- answer: -->

1. For the binary pattern ``0110101101011010``, which is an encoded Binary16, provide the following information:
   - the stored exponent:                                           <!-- answer: -->
   - the mantissa:                                                  <!-- answer: -->
   - the equivalent number in base 2 scientific notation:           <!-- answer: -->

### Binary Real
1. Consider the following number:  ``2# 101.101``
   - Convert the number to decimal:                                 <!-- answer: for 101.101 -->
   - (Hint: Expanded Notation)


### Subtraction with Complements

Calculate the 8-bit two's complement for each of the following numbers:
 1. 5:                                                             <!-- answer: -->
 1. 17:                                                            <!-- answer: -->
 1. 32:                                                            <!-- answer: -->
 1. 67:                                                            <!-- answer: -->
 1. 110:                                                           <!-- answer: -->

Solve the following addition/subtraction problems using 8-bit binary arithmetic. Show your work by modifying the template provided.

 1. -17 + 32
     - decimal answer:                <!-- answer:  -17 + 32 -->
     - encoded answer:                <!-- answer: -->
     
     ```
       0000 0000     <!-- answer: carries -->
       0000 0000     <!-- answer: op1 encoding -->
     + 0000 0000     <!-- answer: op2 encoding -->
     -----------
     0 0000 0000     <!-- answer: sum encoding -->
     ```

 1. 17 - 67
     - decimal answer:                <!-- answer:  17 - 67 -->
     - encoded answer:                <!-- answer: -->
     
     ```
       0000 0000     <!-- answer: carries -->
       0000 0000     <!-- answer: op1 encoding -->
     + 0000 0000     <!-- answer: op2 encoding -->
     -----------
     0 0000 0000     <!-- answer: sum encoding -->
     ```


  1. -5 - -110    
     - decimal answer:                <!-- answer: -5 - -110 -->
     - encoded answer:                <!-- answer: -->
     
     ```
       0000 0000     <!-- answer: carries -->
       0000 0000     <!-- answer: op1 encoding -->
     + 0000 0000     <!-- answer: op2 encoding -->
     -----------
     0 0000 0000     <!-- answer: sum encoding -->
     ```

### Bit-Stream Separation

For the following bit sequence

  - ``010110011110101010111101101100001001101101001101``

For each of the following domains, identify each of the individual componments that make up the bit sequence.
Note that you do NOT have decode the string, just identify the individual components.

Domains:
   1. Octal String:                                    <!-- answer: -->
   1. Hex String:                                      <!-- answer: -->
   1. Base64 String:                                   <!-- answer: -->
   1. UTF-8 String:                                    <!-- answer: -->
 

### Conversions Between Powers of Two
For each of the following numbers, convert then into the indicated base. 

  1. 16# 1011
     - 2#                                         <!-- answer: -->
     - 8#                                         <!-- answer: -->
     - 16#                                        <!-- answer: -->

  1. 8# 10101011
     - 2#                                         <!-- answer: -->
     - 8#                                         <!-- answer: -->
     - 16#                                        <!-- answer: -->

  1. 2# 10101110 11101010 01011101 
     - 2#                                         <!-- answer: -->
     - 8#                                         <!-- answer: -->
     - 16#                                        <!-- answer: -->

   1. 4# 1010101
     - 2#                                         <!-- answer: -->
     - 8#                                         <!-- answer: -->
     - 16#                                        <!-- answer: -->

### Conversion from Base 10 to Base 2

  1. Convert ``1453`` (base 10) to a binary number:
     - show all your work below.
                                                  <!-- answer: -->


