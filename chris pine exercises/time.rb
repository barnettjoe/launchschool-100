puts 'what year were you born?'
year_birth = gets.chomp
puts 'what month?'
month_birth = ((gets.chomp).downcase).to_sym
#puts 'month_birth = ' + month_birth
u
by

months = {january: 1, february: 2, march: 3, april: 4, may: 5, june: 6, july: 7, august: 8, september: 9, october: 10, november: 11, december: 12}


month_birth = months.fetch(month_birth)
#puts 'month_birth = ' + month_birth
puts 'what day'
day_birth = gets.chomp

birth_time = Time.local(year_birth.to_i, month_birth.to_i, day_birth.to_i)
age = (Time.new - birth_time)
#puts age
age_in_years = (age/(3600 * 24 * 365.25)).to_i
puts "SPANK! \n" * age_in_years
puts
puts age_in_years
