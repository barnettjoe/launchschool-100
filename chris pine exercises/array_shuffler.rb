word_list = []
while true
  puts 'please enter a word or just press enter to finish'
  word = gets.chomp
  break if word == ''
  word_list.push(word)
end

shuffled_array = []

while word_list.length > 0
  i = word_list.length
  choice = word_list[rand(i)]
  word_list = word_list - [choice]
  shuffled_array.push choice
shuffled_array
end
puts ''
puts shuffled_arrayn