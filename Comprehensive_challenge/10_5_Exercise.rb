person = {
  name: "john vanderbilt",
  city_name: "salt lake city",
  country: "usa",
  zip_code: "84103"
}

person_name = person[:name].split
cityname = person[:city_name].split
country = person[:country].upcase
zip_code = person[:zip_code]


persons_namme = []
person_name.each do |name|
    persons_namme.push(name.capitalize)
end

city_namme = []
cityname.each do |city|
    city_namme.push(city.capitalize)
end

puts persons_namme.join(" ")
puts city_namme.join(" ") + ", " + country.to_s   + " "+ person[:zip_code].to_s