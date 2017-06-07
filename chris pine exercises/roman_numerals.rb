puts 'please enter a number between 1 and 3000'
remainder = gets.chomp.to_i
def digit_counter(x, input_number)
  digits = 0
  while input_number >= x
    input_number -= x
    digits += 1
  end
  digits
end

numerals = {
M: 1000,
D: 500,
C: 100,
L: 50,
X: 10,
V: 5,
I: 1 
}

numerals.each do |a, b|
  number_of_digits = digit_counter(b, remainder)
  print a.to_s * number_of_digits
  remainder -= b * number_of_digits
end
puts ''
