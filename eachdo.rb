# numbers = (1..20)

# numbers.each do |number|
#   puts number
# end

# num = (35..40)# Write your code here
# num.each do |number|
#   puts number
# end

range = (30..50)
puts range.include? 45

ranges = (60..90)
puts ranges.include? 78

number = 11
if (40..80).include? number*2
    puts "Large number"
else
    puts "small number"
end

range =  (1..5)
array = range.to_a

puts array

puts (1..5).include?(5)           #=> true
puts (1...5).include?(5)    