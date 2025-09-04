hash = { name: "John Smith" }
puts hash

hash2 = Hash.new
puts hash2

hash3 = Hash.new
hash3 = hash3.merge({ name: "John Smith" })
puts hash3

hash1 = Hash.new()
hash1 = hash1.merge({city: "colombo"})
# Write your code here
p hash1

hash = { name: "John Smith",
         city: "Chicago"}

hash.default = 0

age = hash[:age]
puts age

h = Hash.new(0)
hash = h.merge({ name: "John Smith", city: "Chicago"})

age = hash[:age]
puts age