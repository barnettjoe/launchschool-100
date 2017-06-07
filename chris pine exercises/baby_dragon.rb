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

  def walk
    puts "you walk #{@name}"
    stuff_in_intestine = 0
    passage_of_time
    method_dispatch
  end

  def put_to_bed
    puts "you put #{@name} to bed"
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts "#{@name} snores, filling the room with smoke" 
      end
    end  
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly"
    end
    method_dispatch
  end

  def toss
    puts "you toss #{@name} up into the air"
    puts "he giggles, which singes your eyebrows"
    passage_of_time
    method_dispatch
  end

  def rock
    puts "you rock #{@name} gently"
    @asleep = true
    puts "he briefly dozes off..."
    passage_of_time
    if @asleep
      @asleep = false
      puts "...but wakes when you stop"
    end
    method_dispatch
  end

  private

  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

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

    if hungry?
      if @asleep
        @asleep = false
        puts "he wakes up suddenly!"
      end
      puts "#{@name}'s stomach grumbles..."
    end
    if poopy?
      if @asleep
        @asleep = false
        puts "he wakes up suddenly!"
      end
      puts "#{@name} does the potty dance..."
    end
  end

  def method_dispatch
    puts "what would you like to do with #{@name}?"
    @command = gets.chomp
    if @command == "feed"
      feed
    elsif @command == "walk"
      walk
    elsif @command == "rock"
      rock
    elsif @command == "toss"
      toss
    else
      puts "I don't know that command..."
      method_dispatch      
    end      
  end
end

puts "what would you like to name your dragon?"
drag_name = gets.chomp
pet = Dragon.new drag_name
