hash =  { USA: "Washington D.C.",
          England: "London",
          France: "Paris" }

puts hash

hash = {
  first_name: "John",
  Last_name: "Smith",
  age: 25
}

puts hash

hash =  { USA: "Washington D.C.",
          England: "London",
          France: "Paris" }

puts hash[:France]

city_info = {
  name: "San Francisco",
  country: "USA",
  zip: "94131"
}
puts city_info[:name] + ", "  + city_info[:country]
puts city_info[:zip]

hash.merge!({ Italy: "Rome"})

puts hash

hash.merge!({India: "Mumbai"})

puts hash

hash[:japan] = "tokyo"

puts hash

all_keys = hash.keys
puts all_keys


hash.each do |key, value|
    puts "Capital of " + key.to_s + " is " + value
end

hotel = {
  "201" => "John Smith",
  "202" => "Mary Gold",
  "203" => "Kevin Kelly"
}

hotel.each do |key, value|
    puts value.to_s + " is staying in "+key.to_s
end

dog = "Pluto"
cat = "Tom"

mammals = { dog: dog, cat: cat}
# Shorthand
animals = { dog:, cat:}

puts animals
puts mammals

# fish = "Clown-fish"
# bird = "Seagull"

# life = {"fish":, "bird":}

# puts life 