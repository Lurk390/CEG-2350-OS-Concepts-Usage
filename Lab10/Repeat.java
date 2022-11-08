import java.util.Scanner;

public class Repeat {

    public static void main(String[] args) {
        // Prompt the user to enter text
        Scanner input = new Scanner(System.in);
        System.out.print("Enter text: ");
        String text = input.nextLine();
        input.close();

        // Output the captured text back to standard output
        System.out.println(text);
    }
}
