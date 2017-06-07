def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  puts "please enter two integers - one positive and one negative"
  num1 = gets.chomp
  num2 = gets.chomp
  both_numbers_valid = (valid_number?(num1) && valid_number?(num2))
  one_pos_one_neg = (num1.to_i > 0 && num2.to_i < 0)||(num2.to_i > 0 && num1.to_i < 0)
  if both_numbers_valid && one_pos_one_neg
    puts "#{num1} + #{num2} = #{num1.to_i + num2.to_i}"
    break
  end
end

