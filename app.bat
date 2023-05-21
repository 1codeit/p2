@echo off
setlocal EnableDelayedExpansion

set attempts=0

:login
if %attempts% LSS 3 (
    set /p username=Username: 
    set /p password=Password: 

    if "!username!"=="admin" if "!password!"=="secret" (
        echo Access granted
        exit /b 0
    ) else (
        echo Access denied. Try again.
        set /a attempts+=1
        goto login
    )
) else (
    echo Maximum number of attempts reached.
    exit /b 1
)
