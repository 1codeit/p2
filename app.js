const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

let attempts = 0;

function login() {
  rl.question('Username: ', (username) => {
    rl.question('Password: ', (password) => {
      if (username === 'admin' && password === 'secret') {
        console.log('Access granted');
        rl.close();
      } else {
        console.log('Access denied. Try again.');
        attempts++;
        if (attempts >= 3) {
          console.log('Maximum number of attempts reached.');
          rl.close();
        } else {
          login();
        }
      }
    });
  });
}

login();
