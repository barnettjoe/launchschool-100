puts "enter a number between 1 and 100"
number_input = gets.chomp.to_f


def number_range number
  if number == 0
    puts "the number is zero"
  elsif number > 0 && number < 50
    puts "the number is between zero and fifty"
  elsif number == 50
    puts "the number is fifty"
  elsif number > 50 && number < 100
    puts "the number is between fifty and one hundred"
  elsif number > 100
    puts "the number is greater than one hundred"
  end  
end

number_range(number_input)