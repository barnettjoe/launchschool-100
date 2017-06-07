lines = 0
loop do
  loop do
    puts ">> how many output lines do you want? enter a number >= 3, or press q to quit"
    response = gets.chomp
    exit if response.downcase == "q" 
    lines = response.to_i
    break if lines >= 3
    puts "that's not enough lines!"
  end
  lines.times {puts "launch school is the best"}
end