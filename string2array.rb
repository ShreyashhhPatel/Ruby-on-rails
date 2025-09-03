city_name = "Salt Lake City"

array = city_name.split

puts array.to_s


# split into array
city_name = "rio de janeiro"

array = city_name.split

puts array

# split on bases of comma

things_i_like = "ice cream, chocolate, movies, beaches"

items = things_i_like.split(",")

puts items.to_s

fruits = "banana, apple, grapes"

array = fruits.split(", ")

puts array

friends = "John and Annie"

array = friends.split(" and ")

puts array

# Split the string into an array of cities

cities = "Chicago | Miami | Seattle"

array = cities.split(" | ")

puts array

city_name = "Salt Lake City"

puts city_name.split[1]

things_i_like = ["ice cream", "chocolate", "movies"]

puts things_i_like.join

things_i_like = ["ice cream", "chocolate","movies"]

puts things_i_like.join(" ")

sports_i_like = ["basketball", "tennis","hockey"]
puts sports_i_like.join(" ")

cities = "chicago, miami, seattle"
cities_in_array = cities.split(", ")
puts cities_in_array
new_cities = []

cities_in_array.each do |city|
    new_cities.push(city.strip.capitalize)
end

new_cities_name = new_cities.join(" , ")
puts new_cities_name
