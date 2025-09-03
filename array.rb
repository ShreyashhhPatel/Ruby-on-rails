things_i_like = ["ice cream", "chocolate","movies"]
things_i_like.each do |thing|
    puts "I like #{thing}"
    end

sports_i_like = ["basketball", "tennis", "hockey"]
sports_i_like.each do |sport|
    puts "#{sport}"
end

numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.each do |number|
    puts number * 3
end

numbers = [5,19,38,72]
numbers.each do |x|
    puts x*10
end 

things_i_like = [ "ice cream" , "biryani" , "pavvada"]
puts things_i_like.length

sports_like = ["cricket", "baseball","CSGO","NFSMW"]
reverse_sport = sports_like.reverse
reverse_sport.each do |sport|
    puts "I like " + sport
end

things_I_like = []
things_I_like.push("icecream")
things_I_like.push("icecream")
things_I_like.push("pavada")
things_I_like.push("icecream")
puts things_I_like

num1 = [1,2,3,4,5]
num2 = []
num1.each do |num|
    num2.push(num*2)
end

puts num2.to_s  

names = ["john", "mary", "michael"]
upcased_names = []
names.each do |name|
    upcased_names.push(name.upcase)
end
# Write your code here

puts upcased_names

# taking out 4th element
alphabets = ["A", "B", "F", "K", "L", "O", "T"]
puts alphabets[4-1]

appliances = ["Refrigerator", "Air Conditioner", "Heater", "Refrigerator", "Television", "Heater", "Air Conditioner", "Refrigerator"]

puts appliances.tally

numbers = [1, 1, 3, 2, 6, 5, 11, 1, 2, 5, 6, 11]
puts numbers.tally

tallied_animals = {}

animal_group_1 = ["Cat" ,"Cat" , "Dog", "Sloth"]

animal_group_2 = ["Sloth", "Elephant", "Tiger"]

animal_group_3 = ["Dog", "Tiger", "Cat"]

animal_group_1.tally(tallied_animals)
animal_group_2.tally(tallied_animals)
animal_group_3.tally(tallied_animals)

puts tallied_animals