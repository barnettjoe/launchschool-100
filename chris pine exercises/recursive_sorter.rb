word_list = []
while true
  puts 'please enter a word or just press enter to finish'
  word = gets.chomp
  break if word == ''
  word_list.push(word)
end


def sort(list)
  #use the quicksort agorithm
  #first pop the last element and put it at the middle
  middle_element = list.pop
  #now we need to split the rest into two...
  small_half = list.select {|a| a.downcase < middle_element}
  big_half = list - small_half
  #now put together the improved list
  if small_half.length < 2 && big_half.length < 2
    return small_half + [middle_element] + big_half
  else
    improved_list = sort(small_half) + [middle_element] + sort(big_half)
  end

end


print sort word_list
