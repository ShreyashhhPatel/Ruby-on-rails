puts 1 + 2
puts 24 * 7 * 4 * 12
puts 'hello ' + 'world'
puts 'hello ' * 3
# puts '12' * 3
# puts '12' + '3'
# puts '12' + 3.to_s  
# puts '12' + 3
# puts '12' * 3

var = 'Shreyash ' + 'Patel '
puts var 
puts 'my name is ' + var

var = 3 * 6
puts var

puts 45 + 5 * 12

# Concatinate string
greeting = 'Hello'
name = 'Shreyash'
puts greeting + " " + name

# reverse string
puts "I Love "  + "spiderman " 
reverse_name = "yerhs".reverse

reverse_ice = "I love Icecream".reverse
puts reverse_ice

string1 = "Shreyash".upcase
string2 = "Patel".downcase
puts string1 + " " + string2

puts "I love ice cream".upcase

puts " shreyah patel ".strip

# puts "Ruby is " + 24 + " year old."

puts "Ruby is " + 24.to_s + " year old."

array = [1,2,3,4,5,6,7]

puts array 
puts array.to_s

puts "12".to_i + 3

# use to capitalize the first charater of the string
puts "miami".capitalize

puts "basketball".capitalize

name = "John Smith"
puts name.upcase.downcase.capitalize

string = "hello"

puts string[0]

string = "hello"
puts string[-2]

name = "John Smith"
puts name.start_with?("John")

my_name = "shreyash"
puts my_name.start_with?("shrey")

name = "Chicago"
puts name.include?("go")

name = "Seattle"
puts name.include?("ttle")

name = "Shreyash V Patel"
character = name.chars

puts "Print all characters"
puts character
puts character[4]


puts "--compare without considering case"
string1 = "Shreyash"
string2 = "shREYASH"

result = string1.casecmp(string2)
puts result

result = string1 <=> string2
puts result

puts "Greeting "+ string1

greetings = "Good morning #{string1}"
puts greetings
puts "Good morning #{string1}"

name = "Mary"
greet = "Good evening"
greetings = greet + " " + name
puts greetings

string = 'I am John. \n I am 25 years old'
puts string

string = "I am John.\nI am 25 years old"
puts string 

# Get the first 6 letters of the string
game = "basketball"
puts "1st number tells the initializing point, and second number tells you the lenght."
puts game[0,6]
puts game[6,4]

# Get the word "America" from the string
country = "United States of America"
puts country[17,7]

message = "ping pong"
acknowledgment_message = message.tr("i","o")
puts acknowledgment_message
new_acknowledgment_message = message.tr("ng","zz")
new_acknowledgment_message = message.tr("ng","asdasd")

puts new_acknowledgment_message

word = "monastery"
new_word = word.gsub("on", "")
new_word = word.gsub("on", "zzzzzz")
puts new_word

city = "Seattle"
puts "the length of string #{city} is " + city.length.to_s