numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odds = numbers.select {|x| x % 2 == 1}

puts odds