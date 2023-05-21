import java.io.Console;

public class app {
    public static void main(String[] args) {
        Console console = System.console();
        int attempts = 0;

        while (attempts < 3) {
            String username = console.readLine("Username: ");
            char[] passwordArray = console.readPassword("Password: ");
            String password = new String(passwordArray);

            if (username.equals("admin") && password.equals("secret")) {
                System.out.println("Access granted");
                break;
            } else {
                System.out.println("Access denied. Try again.");
                attempts++;
            }

            // Clear the password from memory
            java.util.Arrays.fill(passwordArray, ' ');
        }

        if (attempts >= 3) {
            System.out.println("Maximum number of attempts reached.");
        }
    }
}
