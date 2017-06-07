require 'yaml' 
for_yaml = [[['a', 'b', 'c'],['d', 'e', 'f'],['g', 'h', 'i',]],[['j', 'k', 'l'],['m', 'n', 'o'],['p', 'q', 'r']],[['s', 't', 'u'],['v', 'w', 'x'],['y', 'z', '-']]]

yammled_string = for_yaml.to_yaml

puts yammled_string