# Binary Numbers with Complement

This assignment is being provided to you to help prepare you for the next exam.


Based upon input from the class, I am attempting to use a markdown (.md) style file for assignments, quizzes, and exam. In the past, we have tried annotated PDFs, word documents, etc., with limited success.

Within this file, you will notice the string "answer" that is preceeded by a sharp (#) used throughout.  This string is being used to tag each line that has the expected answer for each problem.  An automated process will be used to grade this assignment, as well as the upcoming test. As such, it is important that these strings remain on the line on which they are on.  (It is okay if this strings as shifted on the line.)

I have also structured this document to provide you with appropriate templates and examples to help you incorporate your answers.  We will see how this works.

## Directions:

### To Get Started:
1. Clone this repository to your desktop computer
1. Copy the "README.md" file to "answers.md"
1. Add the "answers.md" file to your repo ``git add answers.md``
1. Commit this file to your local repo ``git commit -m 'starting the assignment' ``
1. Push this file to the remote repo ``git push``

### Work on the Assignment
1. Edit the "answers.md" file to incorporate your answers.
1. Make sure you add your name in the space provided.

### To See What I Will See.
Run the following command (assuming it is on your computer), to see just your answers.
```
grep "# answer" answers.md
```

### To Submit Your Work
* Execute the following commands:
  ```
  git add answers.md
  git commit -m 'completed the assignment'
  git push
  ```
* You can validate what you have submitted by reviewing your remote repo on github.com.

# Name: Michael Peters              # answer


# Unsigned Binary Integers
Provide the 8-bit binary encoding for each of the follow decimal numbers:

  1. 5
     - 8-bit encoding: 0000 0101    # answer
  1. 25
     - 8-bit encoding: 0001 1001    # answer 
  1. 84
     - 8-bit encoding  0101 0100    # answer
  1. 255
     - 8-bit encoding: 1111 1111    # answer 

# Negative Binary Integers:
There are several ways to encode negative values.  
   1. We can dedicate the left-most bit to indicate the sign of the number. Floating point numbers use this scheme, but not binary integers.
   1. We can encode the number using One's complement.
   1. We can encode the number using Two's complement.

For each of the following numbers, provide
  - the encoding of absolute value of the number using unsigned binary encoding
  - the encoding of the number using One's complement
  - the encoding of the number using Two's complement

Each answer should use 8-bit encodings.

1. -5
   - abs(-5) binary encoding:   0000 0101  # answer
   - 1's complement encoding:   1111 1010  # answer
   - 2's complement encoding:   1111 1011  # answer
1. -25
   - abs(-25) binary encoding:  0001 1001  # answer
   - 1's complement encoding:   1110 0110  # answer
   - 2's complement encoding:   1110 0111  # answer
1. -84
   - abs(-84) binary encoding:  0101 0100  # answer
   - 1's complement encoding:   1010 1011  # answer
   - 2's complement encoding:   1010 1100  # answer
1. -127
   - abs(-127) binary encoding: 0101 0111  # answer
   - 1's complement encoding:   1010 1000  # answer
   - 2's complement encoding:   1010 1001  # answer

Provide the 16-bit encodings for -5
  - abs(-5) binary encoding:    0000 0000 0000 0101         # answer
  - 1's complement encoding:    1111 1111 1111 1010         # answer
  - 2's complement encoding:    1111 1111 1111 1011         # answer


# Two's Complements:
It is common for numbers to be encoded using two's complement. For each of the following numbers:
   - provide their encoded value using two's complement
   - calculate the 1's complement of the number
   - calculate the 2's complement of the number

  1. 5
     - encoded value:  0000 0101      # answer
     - 1's complement: 1111 1010      # answer
     - 2's complement: 1111 1011      # answer
  1. -25
     - encoded value:  1111 1011      # answer
     - 1's complement: 0000 0100      # answer
     - 2's complement: 0000 0101      # answer
  1. 84
     - encoded value:  0101 0100      # answer
     - 1's complement: 1010 1011      # answer
     - 2's complement: 1010 1100      # answer
  1. 0
     - encoded value:  0000 0000      # answer
     - 1's complement: 1111 1111      # answer
     - 2's complement: 0000 0000      # answer
  1. -127
     - encoded value:  0101 0111      # answer
     - 1's complement: 1010 1000      # answer
     - 2's complement: 1010 1001      # answer
 1. 30
    - encoded value:   0001 1110      # answer
    - 1's complement:  1110 0001      # answer
    - 2's complement:  1110 0000      # answer

# Binary Addition:
Solve the following addition problems using 8-bit binary arithmetic. Show your work by modifying the template provided.

  1. 30 + 18
     - decimal answer: 48                # answer
     - encoded answer: 0011 0000         # answer
     ```
       0011 1100     # answer: carries
       0001 1110     # answer: op1 encoding
     + 0001 0010     # answer: op2 encoding
     -----------
     0 0011 0000     # answer: sum encoding
     ```
 
  1. 84 - 25
     - decimal answer: 59              # answer
     - encoded answer: 0011 1011       # answer
     ```
       1000 1000     # answer: carries
       0101 0100     # answer: op1 encoding
     + 1110 0111     # answer: op2 encoding
     -----------
     1 0011 1011     # answer: sum encoding
     ```
  1. -127 + 34
     - decimal answer: -93             # answer
     - encoded answer: 1010 0011       # answer
     ```
       0000 0000     # answer: carries
       1000 0001     # answer: op1 encoding
     + 0010 0010     # answer: op2 encoding
     -----------
     0 1010 0011     # answer: sum encoding
     ```

  1. -84 - 84
     - decimal answer: -168            # answer  
     - encoded answer: 1 0101 1110     # answer
     
     ```
       0101 1110     # answer: carries
       1010 1100     # answer: op1 encoding
     + 1010 1100     # answer: op2 encoding
     -----------
     1 0101 1110     # answer: sum encoding
     ```
 
  1. 30 + -127
     - decimal answer: -97             # answer
     - encoded answer: 1001 1111       # answer
     
     ```
       0000 0000     # answer: carries
       1000 0001     # answer: op1 encoding
     + 0001 1110     # answer: op2 encoding
     -----------
     0 1001 1111     # answer: sum encoding
     ```

# Conversions Between Powers of Two

While working at the assemble level, we often need to represent various bit patterns. While it is easy for the computer to manipulate binary values, but for us it is very error prone.  As such, we represent these bit patterns as octal or hexadecimal values.  Hence, we need to convert to and from these bases quickly.  

For each of the following numbers, convert then into the indicated base. 

  1. 16# F23FA
     - 2# 1111 0010 0011 1111 1010                # answer
     - 8# 3621772  (011 110 010 001 111 111 010)  # answer
     - 16# F23FA   (1111 0010 0011 1111 1010)     # answer

  1. 8# 7354643
     - 2# 0001 1101 1101 1001 1010 0011           # answer
     - 8# 7354643  (000 111 011 101 100 110 100 011)  # answer
     - 16# 1D D9A3                                # answer

  1. 2# 11011001101010011010011111010
     - 2# 0001 1011 0011 0101 0011 0100 1111 1010 # answer
     - 8# 315 232 372                             # answer
     - 16# 1B35 34FA                              # answer

  1. 16# DEFACE
     - 2# 1101 1110 1111 1010 1100 1110           # answer
     - 8# 67 575 316                              # answer
     - 16# DEFACE                                 # answer

  1. 8# 73453477
     - 2# 1110 1110 0101 0111 0011 1111           # answer
     - 8# 73453477                                # answer
     - 16# EE573F                                 # answer
 
 1. 16# 101101
    - 2# 0001 0000 0001 0001 0000 0001            # answer
    - 8# 4010401                                  # answer
    - 16# 101101                                  # answer

  1. 4# 231232     # No, we did not discuss this one in class, but you can do it!
     - 2#                                         # answer
     - 8#                                         # answer
     - 16#                                        # answer


# BCD: Binary Encoded Decimals
BCD allows us to represent any number with infinite precision. Such encoding is used in the financial and commercial world.  Whereas floating point numbers are used within the scientific community to represent very large and very small numbers.

Provide the BCD encoding for the following decimal number:

  1. 228,999: US National Dept per taxpayer 
     - 0010 0010 1000 1001 1001 1001       # answer
  1. 406,812,361,987:  Current interest on US National Debt on Oct 15, 2021 @ 11:30 AM PDT
     - 0100 0000 0110 1000 0001 0010 0011 0110 0001 1001 1000 0111    # answer

Add the following two decimal numbers using BCD arithmetic

  1. 3456 + 1834
     - decimal answer:                    # answer
     - encoded answer:                    # answer
     
    ```
      0001 1111 1101 1100    # answer: carries
      0000 1101 1000 0000    # answer: op1 encoding
    + 0000 0111 0010 1010    # answer: op2 encoding
    ---------------------
    0 0001 0100 1010 1010    # answer: sum encoding
    + 0000 0000 0110 0110    # answer: add correcting value of either 0 or 6
    ---------------------
    0 0001 0101 0001 0000    # answer: final sum
    ```
