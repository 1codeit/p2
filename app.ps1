$attempts = 0

while ($attempts -lt 3) {
    $username = Read-Host 'Username: '
    $password = Read-Host -AsSecureString 'Password: '

    $passwordText = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($password))

    if ($username -eq 'admin' -and $passwordText -eq 'secret') {
        Write-Host 'Access granted'
        break
    }
    else {
        Write-Host 'Access denied. Try again.'
        $attempts++
        continue
    }
}
