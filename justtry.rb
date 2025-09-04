def greet(&block)
  puts "Good morning"
  block.call
  puts "Good evening"
end

greet { puts "Roger Smith" }

puts "Ruby - base"