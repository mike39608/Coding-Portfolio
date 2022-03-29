import java.util.Scanner;

public class ConcatenateStringInt {

    public static String concatenate(String myString, int myInteger) {
        String result = myString + myInteger;
        return result;
}

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter string: ");
        String myString = input.nextLine();
        System.out.print("Enter integer: ");
        int myInteger = input.nextInt();
        System.out.println("Concatenated: " +
                           concatenate(myString, myInteger));
    }
}
