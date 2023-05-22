import getpass

attempts = 0

while attempts < 3:
    username = input('Username: ')
    password = getpass.getpass('Password: ')

    if username == 'admin' and password == 'secret':
        print('Access granted')
        break
    else:
        print('Access denied. Try again.')
        attempts += 1
        continue
while attempts > 3:
    print('Too many attempts. Access denied.')
    break