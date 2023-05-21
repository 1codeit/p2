#include <stdio.h>
#include <string.h>

int main()
{
    int attempts = 0;
    char username[100];
    char password[100];

    while (attempts < 3)
    {
        printf("Username: ");
        scanf("%s", username);

        printf("Password: ");
        scanf("%s", password);

        if (strcmp(username, "admin") == 0 && strcmp(password, "secret") == 0)
        {
            printf("Access granted\n");
            break;
        }
        else
        {
            printf("Access denied. Try again.\n");
            attempts++;
        }
    }

    if (attempts >= 3)
    {
        printf("Maximum number of attempts reached.\n");
    }

    return 0;
}
