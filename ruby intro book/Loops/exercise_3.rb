ni_group = ["nickel", "palladium", "platinum", "damstadtium"]

ni_group.each_with_index do |item, place|
  puts "#{place}: #{item}"
end