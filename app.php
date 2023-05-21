<?php

$attempts = 0;

while ($attempts < 3) {
    echo "Username: ";
    $username = trim(fgets(STDIN));

    echo "Password: ";
    $password = trim(fgets(STDIN));

    if ($username === 'admin' && $password === 'secret') {
        echo "Access granted\n";
        break;
    } else {
        echo "Access denied. Try again.\n";
        $attempts++;
    }
}

if ($attempts >= 3) {
    echo "Maximum number of attempts reached.\n";
}
