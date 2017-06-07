def grandma_response(a)
  if a.upcase != a
    puts 'HUH?! SPEAK UP, SONNY!'
  else
    year = 1930 + rand(21)
    puts 'NO, NOT SINCE ' + year.to_s + '!'
  end
end


bye_counter = 0
while true
  input = gets.chomp
  if input == 'BYE'
    bye_counter += 1
    break if bye_counter == 3
    grandma_response(input)
  else
    bye_counter = 0
    grandma_response(input)
  end      
  
end