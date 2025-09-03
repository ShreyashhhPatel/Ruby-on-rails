array = [1,2,3,4,5,6,7,8]

even_array = array.select do |item|
    item.even?
end
# puts even_array

cities = ["Paris", "London", "Los Angeles", "Chicago"]
city_strt_l = cities.select do |city|
    city.start_with?("L")
end
puts city_strt_l

array = [1,2,3,4,5,6,7,8]
even_array = array.reject do |item|
  item.odd?
end

puts even_array

cities = ["Paris", "London", "Los Angeles", "Chicago"]
city_not_l = cities.reject do |city|
    city.start_with?("L")
end
puts city_not_l

numbers = [1,2,3,4]
numbers << 5
puts numbers

numbers1 = [1,2,3,4]
numbers2 = [5,6]

numbers1 = [1,2,3,4]
numbers2 = [5,6]

# all_numbers = numbers1 + numbers2
# puts all_numbers
all_numbers = numbers1 << numbers2
puts all_numbers

arrayOne = [true, false]
arrayTwo = [nil, "hello"]
one_array = arrayOne << arrayTwo
puts one_array

array1 = [1, [2, 3, 4], 5, 6, [7,8]]

array2 = array1.flatten

puts array1.to_s
puts array2.to_s

array1 = [1,2,3,4,5,6,7]
array2 = array1 - [2,3]
puts array1.to_s
puts array2.to_s

array_1 = ["apple", "banana", "cherry", "date"]
# Write your code here
array_2 = array_1 - ["banana","cherry"]
puts array_2

fruits = ["Apple", "Pineapple", "Guava", "Pear"]
red, brown, green, darkgreen = fruits
puts red

array = [1,2,3,4,5,6]

a, *b, c = array
# a = 1
# b = [2]
# c = 3
puts a# puts c
puts b

array = [1,2,3]
a, b, c, *d = array

# a = 1; b = 2; c = 3; d = []

puts a
puts b
puts c
puts d

names = %w(John Mary Adam)
names.each_with_index do |name, index|
  puts "#{name} is at position #{index}"
end