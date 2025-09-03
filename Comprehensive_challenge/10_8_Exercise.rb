data = {
  Houston: 104,
  Atlanta: 113,
  Austin: 88,
  Baltimore: 116,
  Boston: 126,
  Dallas: 81
}
rainy_city = []
data.each do |key, value|
  if value >  100
    rainy_city.push(key)
  end
end

puts rainy_city
# Write your code here