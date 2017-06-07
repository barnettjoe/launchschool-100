class Die
  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing
    @number_showing
  end

  def cheat(x)
    if ((x.to_i == x.to_f) && (1..6).include?(x.to_i))
      @number_showing = x.to_i
    else
      puts 'you must chose an integer between 1 and 6'
    end
  end
end

my_die = Die.new

puts my_die.showing
puts my_die.roll
puts my_die.showing
my_die.cheat(5)
puts my_die.showing
