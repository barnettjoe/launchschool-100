daylight = [true, false].sample

def time_of_day(bool)
  if bool
    puts "it's daytime"
  else
    puts "it's nighttime"
  end
end

time_of_day daylight