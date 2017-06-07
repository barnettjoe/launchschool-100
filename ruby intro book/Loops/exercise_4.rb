puts "enter a number"
start = gets.chomp.to_i

def recursive_countdown n
  puts n
  if n > 0
  recursive_countdown (n - 1) 
  end
end

recursive_countdown start