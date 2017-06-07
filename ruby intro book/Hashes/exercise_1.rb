family = {uncles: ["bob", "joe", "steve"],
          sisters: ["jane", "jill", "beth"],
          brothers: ["frank", "rob", "david"],
          aunts: ["mary", "sally", "susan"]
          }
immediate_family = family.select do |keys, values|
  keys == :brothers || keys == :sisters  
end

arr = immediate_family.values.flatten

p arr