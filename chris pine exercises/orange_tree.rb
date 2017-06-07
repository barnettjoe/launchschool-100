class OrangeTree

  def initialize
    @height = 0
    @age = 0
    @orange_number = 0
  end

  def height
    puts "the height of the tree is #{@height} metres"
  end

  def count_the_oranges
    puts "the are now #{@orange_number} oranges!"
  end

  def pick_an_orange
    tastes = ["kind of gross", "excellent", "okay"]
    if @orange_number > 0
      @orange_number -= 1
      puts "that orange tasted #{tastes[rand(3)]}"
      puts "the are now #{@orange_number} oranges!"
    end
  end

  #private

  def one_year_passes
    oranges_fall_off
    @age += 1 
    @height += 0.5
    orange_growth(@age)
    puts "the tree is now #{@age} years old"
    if @age == 20
      tree_dies
    end
  end

  def oranges_fall_off
    if @orange_number > 0
      puts 'all the remaining oranges fell off'
      @orange_number = 0
    end
  end 

  def tree_dies
    puts "the tree died of old age..."
    exit
  end  
  def orange_growth(age)
    if @age > 5
      @orange_number += (5 * @age)
    end
  end
end

my_orange_tree = OrangeTree.new
my_orange_tree.one_year_passes
my_orange_tree.height
10.times do
  my_orange_tree.one_year_passes
end
my_orange_tree.height
my_orange_tree.count_the_oranges
my_orange_tree.pick_an_orange
9.times do
  my_orange_tree.one_year_passes
end