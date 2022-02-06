# Lab assignment for September 30, 2021

## Directions
1. Update the README.md file to incorporate our answers
2. Submit your assignment via a ``git push``

## Questions
1. Decode the following bit pattern for each of the given domains:
   (If a component has an illegal pattern so say.)
   1. Pattern: 110000001100010011000000110001
   1. Domains:
      - Octal String: 6014230061 (110 000 001 100 010 011 000 000 110 001)
      - Hex String: 30313031 (error?) (11 0000 0011 0001 0011 0000 0011 0001)
      - BCD String: 1000 0000 1000 0101 0010 1001 1001 0110 1001
      - Base64 String: wMTAZ(110000 001100 010011 000000 110001)
      - ASCII String: Error (00110000 00110001 00110000 00110001 )


1. Before we send a message over the network, we send a string of binary digits to announce our intent.  This string is composed of 7 hexidemical digits, each with the value of "16# 2A".  
This string is then immediately followed by the Start of Frame (SOF) deliminator, which is a 8-bit value of "10# 213".  We then can proceed with sending our message.

   1. For each of the following question, provide the binary string...
      - What is the binary bit pattern of the preamble?
	The Binary bit pattern would be 2# 101010
      - What is the binary bit pattern of the SOF deliminator?
       The Binary bit battern would be 2# 11010101.

1. For the following binary sequence that represents a UTF-8 string, identify each of the individual characters of the string.  Note that you do *NOT* have decode the string, just identify each character

   - 110-01001 10-101001 0-1101001 1110-1001 10-101001 10-101001 0-101001

   1. Character #1: 110-01001 10-101001
   1. Character #2: 0-1101001
   1. Character #3: 1110-1001 10-101001 10-101001
   1. Character #4: 0-101001
   1. Character #5: NA
   1. Character #6: NA


1. The following is a binary sequence that was found in the destination IP address of an IP packet.  
   - 10000010 10100110 11101110 11000011
	130.166.238.195

   1. What is the host that was to receive this packet?
      - Perform the following steps:
        1. separate the number into bytes (also known as octets)
        1. convert each octent into decimal
        1. join each of the decial numbers together separated by a '.'
        1. run the command ``host`` with the dotted number you generated as its first arguement
      - You should now be able to answer the question.

	The host that is to recieve this packet is www.csun.edu.	
			
# Example Usage of a Supporting Tool
  1. https://www.sandbox.csun.edu/~steve/binaryValues/binaryMappings.html
     * "2# 101101001".toDec()  10# 361
     * "2# 101101001".toHex()  16# 169
     * "2# 101101001".toBin()  2# 101101001
     * "2# 101101001".nibbles() 2# 0001 0110 1001
     * "2# 101101001".bytes()  2# 00000001 01101001
     * "2# 101101001".seperate(6) 2# 000101 101001 // separate in groups of 6
     * "2# 101101001".chop(6) ["2# 000101","2# 101001"]
     // chop into individual numbers with 6 digits each
     * [ "10# 2A", "8# 23" ].fuse(2) 2# 10 10011 // fuse together to obtain a binary number
