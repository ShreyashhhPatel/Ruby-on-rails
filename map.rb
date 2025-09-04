def doubler(array)
  array.map do |element|
    element * 2
  end
end

array = [4,8,7,3,9,7]
doubled = doubler(array)
puts doubled

puts "-------------------"

def adder(array)
  array.map do |n|
    n + 100
  end
end

puts adder([5,8,3,8,9])