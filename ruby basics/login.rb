PASSWORD = "blah123"
USERNAME = "joe"

loop do
  puts ">> please enter your username"
  user_attempt = gets.chomp
  puts ">> please enter the password"
  pass_attempt = gets.chomp
  break if pass_attempt == PASSWORD && user_attempt == USERNAME 
  puts "invalid password/username combination, please try again"
end

puts "welcome"