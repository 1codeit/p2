section .data
    attempts db 0
    username db 100 DUP(0)
    password db 100 DUP(0)
    access_granted db "Access granted", 0
    access_denied db "Access denied. Try again.", 0
    max_attempts db "Maximum number of attempts reached.", 0

section .text
    global _start

_start:
    ; Initialize attempts counter to 0
    mov byte [attempts], 0

login:
    ; Prompt for username
    mov rdi, 1
    mov rax, 1
    mov rsi, prompt_username
    mov rdx, username_length
    syscall

    ; Read username
    mov rdi, 0
    mov rax, 0
    mov rsi, username
    mov rdx, 99
    syscall

    ; Prompt for password
    mov rdi, 1
    mov rax, 1
    mov rsi, prompt_password
    mov rdx, password_length
    syscall

    ; Read password
    mov rdi, 0
    mov rax, 0
    mov rsi, password
    mov rdx, 99
    syscall

    ; Check username and password
    cmp dword [username], admin
    jne access_denied
    cmp dword [password], secret
    jne access_denied

    ; Access granted
    mov rdi, 1
    mov rax, 1
    mov rsi, access_granted
    mov rdx, access_granted_length
    syscall
    jmp exit

access_denied:
    ; Access denied
    mov rdi, 1
    mov rax, 1
    mov rsi, access_denied
    mov rdx, access_denied_length
    syscall

    ; Increment attempts
    inc byte [attempts]
    cmp byte [attempts], 3
    jl login

    ; Maximum attempts reached
    mov rdi, 1
    mov rax, 1
    mov rsi, max_attempts
    mov rdx, max_attempts_length
    syscall

exit:
    ; Exit program
    mov rax, 60
    xor rdi, rdi
    syscall

section .data
    prompt_username db "Username: ", 0
    prompt_password db "Password: ", 0
    username_length equ $ - prompt_username
    password_length equ $ - prompt_password
    admin db "admin", 0
    secret db "secret", 0
    access_granted_length equ $ - access_granted
    access_denied_length equ $ - access_denied
    max_attempts_length equ $ - max_attempts
