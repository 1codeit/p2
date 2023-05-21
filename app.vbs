Option Explicit

Dim attempts, username, password

attempts = 0

Do While attempts < 3
    username = InputBox("Username:")
    password = InputBox("Password:")

    If username = "admin" And password = "secret" Then
        MsgBox "Access granted"
        OpenBrowser("https://w.hnz.li")
        Exit Do
    Else
        MsgBox "Access denied. Try again."
        attempts = attempts + 1
    End If
Loop

If attempts >= 3 Then
    MsgBox "Maximum number of attempts reached."
End If

Sub OpenBrowser(url)
    Dim shell
    Set shell = CreateObject("WScript.Shell")
    shell.Run url
    Set shell = Nothing
End Sub
