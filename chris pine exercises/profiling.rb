def profile block_description, &block
  profiling_on = false
  start_time = Time.new if profiling_on
  block.call
  if profiling_on
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  end
end

profile '25000 doublings' do
  number = 1
  25000.times do
    number = number + number
  end
  puts number
end