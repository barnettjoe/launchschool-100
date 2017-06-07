class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0
    puts "#{@name} is born"
    method_dispatch
  end

  def feed
    puts "you feed #{@name}"
    @stuff_in_belly = 10
    passage_of_time
    method_dispatch
  end


  private

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly = @stuff_in_belly - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else
      if @asleep
        @asleep = false
        puts "he wakes up suddenly!"
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit 
    end
    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "whoops #{@name} had an accident..."
    end
  end

  def method_dispatch
    puts "what would you like to do with #{@name}?"
    @command = gets.chomp
    if @command = "feed"
      feed
    elsif @command = "walk"
      walk
    elsif @command = "rock"
      rock
    elsif @command = "toss"
      toss      
    end      
  end
end

puts "what would you like to name your dragon?"
drag_name = gets.chomp
pet = Dragon.new drag_name
