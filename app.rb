require 'io/console'

attempts = 0

while attempts < 3
  print 'Username: '
  username = gets.chomp

  print 'Password: '
  password = STDIN.noecho(&:gets).chomp
  puts

  if username == 'admin' && password == 'secret'
    puts 'Access granted'
    break
  else
    puts 'Access denied. Try again.'
    attempts += 1
  end
end

puts 'Maximum number of attempts reached.' if attempts >= 3
