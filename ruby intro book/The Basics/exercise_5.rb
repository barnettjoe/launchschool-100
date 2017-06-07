def factorial x 
  if x == 1 || x == 0
    1
  else
    x * factorial(x - 1)
  end
end

puts factorial 5
puts factorial 6
puts factorial 7
puts factorial 8