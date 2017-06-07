a = {"a" => 234, "b" => 456}
b = {"c" => 222, "d" => 888}

p a.merge(b)
p a
p b
p a.merge!(b)
p a
p b