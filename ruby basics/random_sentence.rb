names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def name(array)
  array.sample
end

def activity(array)
  array.sample
end

def sentence(person, adverb)
  person + " went " + adverb + " today!"
end

puts sentence(name(names), activity(activities))