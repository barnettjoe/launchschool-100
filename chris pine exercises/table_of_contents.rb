chapter_names = []
page_numbers = []

while true
  chapter_counter = chapter_names.length + 1
  puts 'please enter the name of chapter ' + chapter_counter.to_s + ', or just press enter to finish up'
  chapter_name = gets.chomp
  break if chapter_name == ''
  puts 'what is the page number for ' + chapter_name + ' ?'
  page_number = gets.chomp
  chapter_names.push(chapter_name)
  page_numbers.push(page_number)
end
puts('Table of Contents'.center(50))

j = chapter_names.length
for i in (1..j) do 
  puts(("Chapter: #{i}".ljust(15)) + (chapter_names[i - 1].ljust(20)) + ('page'.rjust(10)) + (page_numbers[i - 1].rjust(6))) 
end
