status = ['awake', 'tired'].sample

alert = if status == "awake"
  "be productive!"
else
  "go to sleep!"
end

puts alert
