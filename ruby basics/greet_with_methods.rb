def hello
  "hello"
end

def world
  "world"
end

def greet(space)
  hello + space + world
end

puts greet(' ')
