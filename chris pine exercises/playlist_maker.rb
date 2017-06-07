require 'pp'
puts 'what would you like to call the playlist?'
filename = gets.chomp

#then get all the file names and put in an aray

track_array = Dir["**/*.flac"] + Dir["**/*.mp3"]

#puts track_array

#randomiz/shuffle
def randomizer array
  shuffled_array = []

  while array.length > 0
    i = array.length
    choice = array[rand(i)]
    array -= [choice]
    shuffled_array.push choice
  end
  #puts ''
  #puts shuffled_array
  return shuffled_array
end

#better shuffle

#find clumps
#turn playlist array into array of arrays

shuffled_array = randomizer track_array
(shuffled_array).map! do |i|
  [i, (i.split "/")[1]]
end

pp shuffled_array

better_shuffled = []
k = 0
while k < shuffled_array.length - 1
  if shuffled_array[k][1] == shuffled_array[k + 1][1]
    
  end    
end

#break up clumps


=begin

#write each filename to the playlist file
File.open filename, 'w' do |f|
  (randomizer track_array).each do |i|
    f.write(i + "\n")
  end 
end

=end
