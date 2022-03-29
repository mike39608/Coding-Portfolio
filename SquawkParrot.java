import java.util.Scanner;

public class SquawkParrot {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.print("Enter something to repeat: ");
        String line1 = in.nextLine();
        System.out.print("WOAAAHH, a" + " " + line1 + "!");
    }
}
