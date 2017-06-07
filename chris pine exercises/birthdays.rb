def age_calc year_string, month_string, day_string
  month_birth = (month_string).to_sym
  months = {Jan: 1, Feb: 2, Mar: 3, Apr: 4, May: 5, Jun: 6, Jul: 7, Aug: 8, Sep: 9, Oct: 10, Nov: 11, Dec: 12}
  month_birth = months.fetch(month_birth)
  birth_time = Time.local(year_string.to_i, month_birth.to_i, day_string.to_i)
  age = (Time.new - birth_time)
  age_in_years = (age/(3600 * 24 * 365.25)).to_i
end

puts 'enter a name'
person_name = gets.chomp
filename = 'birthdays.txt'
file_string = File.read filename
people_array = file_string.split("\n")
birthday_hash = {}
people_array.each do |element|
  personal_array = element.split(',')
  birthday_hash[personal_array[0]] = personal_array[1] + personal_array[2]
end

date_of_birth = birthday_hash[person_name]
date_of_birth.lstrip!
month_of_birth = (date_of_birth[0, 3])
year_of_birth = (date_of_birth[-4..-1])
birth_date = ((date_of_birth[3..-5]).lstrip).rstrip

current_age = age_calc year_of_birth, month_of_birth, birth_date
puts "#{person_name} will be #{current_age + 1} on #{month_of_birth} #{birth_date}"