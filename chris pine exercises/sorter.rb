word_list = []

while true
  puts 'please enter a word or just press enter to finish'
  word = gets.chomp
  break if word == ''
  word_list.push(word)
end

ordered_list = []
ordered_list.push(word_list.shift)  

while word_list.length > 0          
  word_to_sort = word_list.pop     
  n = 0
  while (word_to_sort > ordered_list[n])  
    n += 1
    break if n == ordered_list.length                          
  end
  ordered_list.insert(n, word_to_sort)
end
puts ''
print ordered_list
puts ''