puts "how old are you?"
age = (gets.chomp).to_i
years = [10, 20, 30, 40]

years.each do |a| puts "In #{a} years you will be: "
	puts age + a
end
