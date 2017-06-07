def how_many_bottles(x)
  if x == 1
    bottle_string = 'bottle'
  else
    bottle_string = 'bottles' 
  end
  return (x.to_s + ' green ' + bottle_string + ' hanging on the wall')

end

(0..98).each do |bottles_smashed| 

  bottles_remaining = 99 - bottles_smashed

  puts ((how_many_bottles(bottles_remaining)).center(60))
  puts ((how_many_bottles(bottles_remaining)).center(60))
  puts (('and if one green bottle should accidentally fall').center(60))
  puts (('there\'ll be ' + how_many_bottles(bottles_remaining - 1)).center(60))
  puts '' 


end

