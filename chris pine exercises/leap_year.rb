puts 'starting year?'
start_year = gets.chomp.to_i
puts 'ending year?'
end_year = gets.chomp.to_i
all_years = []
all_years.push(start_year)
while all_years[-1] < end_year
  all_years.push(all_years[-1] + 1)
end
div_by_four = all_years.select {|x| x % 4 == 0}
# now remove thsoe years that are divisble by 100 but not 400...
not_leap_years = div_by_four.select {|y|((y % 100 == 0) && (y % 400 != 0))}
#puts not_leap_years
leap_years = div_by_four - not_leap_years
puts ''
puts 'these are the leap years between the given dates:'
puts leap_years