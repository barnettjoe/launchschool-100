puts 'enter your roman numeral'
roman_numeral = (gets.chomp).upcase

def error
  puts "ERROR: THAT'S NOT A PROPER ROMAN NUMERAL"
  exit
end

def roman_letter_value letter
  numerals = {
  M: 1000,
  CM: 900,
  D: 500,
  CD: 400,
  C: 100,
  XC: 90,
  L: 50,
  XL: 40,
  X: 10,
  IX: 9,
  V: 5,
  IV: 4,
  I: 1 
  }
  a = letter.to_sym
  if 
    numerals.key?(a)
    numerals.fetch(a)
  else
    error
  end
end

value_array = []

while roman_numeral.length > 0
  letter_value = roman_letter_value((roman_numeral[0]).chr)
  if roman_numeral.length > 1 
    next_letter_value = roman_letter_value((roman_numeral[1]).chr)
  end
  if (roman_numeral.length == 1 || letter_value >= next_letter_value)
    value_array.push(letter_value)
    roman_numeral = roman_numeral[1..-1]
  else
    pair_value = roman_letter_value(roman_numeral[0].chr + roman_numeral[1].chr)
    roman_numeral = roman_numeral[2..-1]
    value_array.push(pair_value)
  end
end
if value_array != (value_array.sort).reverse
  error
end
total_value = 0
value_array.each {|z| total_value += z}
puts total_value
