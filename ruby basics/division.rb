def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end
numerator = 0
denominator = 0
loop do 
  puts "please enter the numerator"
  numerator = gets.chomp
  break if valid_number? numerator
  puts "that is not a valid number"
end

loop do
  puts "please enter the denominator"
  denominator = gets.chomp
  break if (valid_number? denominator) && (denominator.to_i != 0)
  puts "that is not a valid number"
end

puts "#{numerator} / #{denominator} = #{numerator.to_f / denominator.to_f}"

