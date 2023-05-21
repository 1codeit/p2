package main

import (
	"fmt"
	"os"
	"golang.org/x/crypto/ssh/terminal"
)

func main() {
	attempts := 0

	for attempts < 3 {
		fmt.Print("Username: ")
		var username string
		fmt.Scanln(&username)

		fmt.Print("Password: ")
		password, _ := terminal.ReadPassword(int(os.Stdin.Fd()))
		fmt.Println()

		if username == "admin" && string(password) == "secret" {
			fmt.Println("Access granted")
			break
		} else {
			fmt.Println("Access denied. Try again.")
			attempts++
		}
	}

	if attempts >= 3 {
		fmt.Println("Maximum number of attempts reached.")
	}
}
