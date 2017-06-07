array = []

while true
  puts 'enter an element'
  element = gets.chomp
  break if element == ''
  array.push(element)
end

puts array.sort
