open System

let rec login attempts =
    if attempts < 3 then
        printf "Username: "
        let username = Console.ReadLine()
        printf "Password: "
        let password = Console.ReadLine()

        if username = "admin" && password = "secret" then
            printfn "Access granted"
        else
            printfn "Access denied. Try again."
            login (attempts + 1)
    else
        printfn "Maximum number of attempts reached."

login 0
