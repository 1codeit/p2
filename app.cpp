#include <iostream>
#include <string>
#include <cstdlib>

int main() {
    int attempts = 0;

    while (attempts < 3) {
        std::string username, password;

        std::cout << "Username: ";
        std::cin >> username;

        std::cout << "Password: ";
        std::cin >> password;

        if (username == "admin" && password == "secret") {
            std::cout << "Access granted" << std::endl;
            break;
        } else {
            std::cout << "Access denied. Try again." << std::endl;
            attempts++;
        }
    }

    if (attempts >= 3) {
        std::cout << "Maximum number of attempts reached." << std::endl;
    }

    return 0;
}
