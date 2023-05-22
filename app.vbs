Option Explicit

Dim attempts, username, password

attempts = 0

Do While attempts < 3
    username = InputBox("Username:")
    password = InputBox("Password:")

    If username = "admin" And password = "secret" Then
        MsgBox "Access granted"
        MsgBox " You really have Access granted"
        MsgBox " Man im an annoying programer Access granted"
        MsgBox " OHHHHHHH YEA Access granted"
        MsgBox "HAVE FUN Access granted"
        OpenBrowser("https://w.hnz.li")
        OpenBrowser("https://www.youtube.com/@huskynz")
        OpenBrowser("https://www.youtube.com/watch?v=dQw4w9WgXcQ")
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
