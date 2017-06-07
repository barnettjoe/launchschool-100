def log block_description, &block
  gap = '  ' * $indent_level
  puts "#{gap}beginning #{block_description}"
  puts "#{gap}#{block_description} finished, returning: #{block.call}"
end

$indent_level = 0
log 'a' do 
  $indent_level = 1
  log 'b' do
    $indent_level = 2
    log 'c' do
      blah = "d"
    end
    27 + 38
  end
  string = "hello"
end