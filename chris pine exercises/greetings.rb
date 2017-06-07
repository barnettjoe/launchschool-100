=begin
fullname greeting: writea program thath asks
 for a person's first, middle and then
  last name - finally itshould greet the
   person using their full name
=end

puts 'please enter your first name'
first_name = gets.chomp
puts 'please enter your middle name'
middle_name = gets.chomp
puts 'pleas enter your last name'
last_name = gets.chomp
puts 'your full name is ' + first_name + ' ' + middle_name + ' ' + last_name
fullname_length = (first_name.length + middle_name.length + last_name.length).to_s
puts 'there are ' + fullname_length.to_s + ' letters in your name'