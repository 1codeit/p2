use std::io::{self, Write};

fn main() {
    let mut attempts = 0;

    while attempts < 3 {
        print!("Username: ");
        io::stdout().flush().unwrap();
        let mut username = String::new();
        io::stdin().read_line(&mut username).unwrap();

        print!("Password: ");
        io::stdout().flush().unwrap();
        let mut password = String::new();
        io::stdin().read_line(&mut password).unwrap();

        if username.trim() == "admin" && password.trim() == "secret" {
            println!("Access granted");
            break;
        } else {
            println!("Access denied. Try again.");
            attempts += 1;
        }
    }

    if attempts >= 3 {
        println!("Maximum number of attempts reached.");
    }
}
