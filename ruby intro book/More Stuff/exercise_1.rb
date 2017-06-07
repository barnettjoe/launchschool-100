words = ["laboratory", "experiment", "Pans Labyrinth",
         "elaborate", "polar bear"]


def contains_lab? word
  if /lab/.match(word)
    puts word
  else
    puts "no match"
  end
end


words.each {|element| contains_lab? (element)}
