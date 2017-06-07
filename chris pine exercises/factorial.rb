puts 'enter an integer'
number = gets.chomp.to_i



class Integer
  def factorial 
    x = self
    if x == 0 || x == 1
      return 1
    else
      return x * (x - 1).factorial
    end
  end
end

puts number.factorial