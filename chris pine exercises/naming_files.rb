Dir.chdir '/home/joe/learn_Ruby/picture_inbox'

pic_names = Dir['/home/joe/learn_Ruby/spain_spics/*.{JPG,jpg}']

puts 'what would you like to call this batch?'

batch_name = gets.chomp
puts
print "downloading #{pic_names.length} files: "
pic_number = 1

pic_names.each do |name|
  print'.'  #progress bar
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

if File.exist? new_name
  puts "ERROR - there is already a file with the name #{new_name}"
  exit
end

File.rename name, new_name
pic_number = pic_number + 1
end
puts
puts "done!"
