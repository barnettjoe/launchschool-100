a = {"a" => 234, "b" => 456}

#print keys

a.each_key {|k| puts k}

#print values
a.each_value {|v| puts v}

#print both

a.each {|k, v| puts "key: #{k}, value: #{v}"}