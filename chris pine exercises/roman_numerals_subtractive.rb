class Integer
  def to_roman
  y = self
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

    output_string = ''
    numerals.each do |a, b|
      number_of_digits = digit_counter(b, y)
      output_string = output_string + (a.to_s * number_of_digits)
      y -= b * number_of_digits
    end
    return output_string
  end
end

puts 'please enter a number between 1 and 3000'
number = gets.chomp.to_i
puts number.to_roman