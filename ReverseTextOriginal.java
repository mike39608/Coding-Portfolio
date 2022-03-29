
import java.util.Arrays;
import java.util.Scanner;


public class ReverseTextOriginal {
	   
	 public static String reverseText(String input){
      String[] splitS = input.split(" ");
      String finalRes = "";
      for (int i = 0; i < splitS.length; i++){
        finalRes = finalRes + reverseSubString(splitS[i]) + " ";
        
      }
      return finalRes;
    }
	 
    public static String reverseSubString(String input){
      char[] charA = input.toCharArray();
      int left = 0, right = charA.length - 1;
      while (left < right){
         char temp = charA[left];
         charA[left] = charA[right];
         charA[right] = temp;
         left++;
         right--; 
      }
      String string = new String(charA);
      return string;
    }

	public static void main(String[] args) {
      String S = "";
      for (int i=0; i < args.length; i++){
         S = S + args[i] + " ";
         
      }
      
		System.out.print(reverseText(S));

	}

}
