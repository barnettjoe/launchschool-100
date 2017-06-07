count = 0

loop do
  count += 1
  x = "even"
  x = "odd" if count.odd? 
  puts "#{count} is #{x}!"
  break if count > 4
end