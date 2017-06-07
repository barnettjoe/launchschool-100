PASSWORD = "blah123"

loop do
  puts ">> please enter the password"
  attempt = gets.chomp
  break if attempt == PASSWORD
  puts "invalid password, please try again"
end

puts "welcome"