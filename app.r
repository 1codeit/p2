attempts <- 0

while (attempts < 3) {
  cat("Username: ")
  username <- readline()

  cat("Password: ")
  password <- readline()

  if (username == "admin" && password == "secret") {
    cat("Access granted\n")
    break
  } else {
    cat("Access denied. Try again.\n")
    attempts <- attempts + 1
  }
}

if (attempts >= 3) {
  cat("Maximum number of attempts reached.\n")
}
