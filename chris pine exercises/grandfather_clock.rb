def hour_multiplier &block
  time = Time.new.hour
  if time > 12
    time = time - 12
  end
  time.times do
    block.call
  end
end

hour_multiplier do 
  puts "DONG!"
end