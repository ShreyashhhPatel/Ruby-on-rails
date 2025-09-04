class CapitalCityFinder
  def info(country)
    data = { France: "Paris", India: "New Delhi", England: "London" }
    city = data[country.to_sym]
    puts "The capital of #{country} is #{city}"
  end
end

finder = CapitalCityFinder.new
finder.info("India")

puts "--- IGNORE ---"   
class CapitalCityFinder

  def get_capital_city(country)
    data = { France: "Paris", India: "New Delhi", England: "London" }
    city = data[country.to_sym]
    return city
  end

  def info(country)
    city = get_capital_city(country)
    puts "The capital of #{country} is #{city}"
  end
end

finder = CapitalCityFinder.new
finder.info("India")

puts "--- IGNORE ---"
class CapitalLooker
  def find_capital(country)
     hash = {India: "New Delhi", France: "Paris", England: "London"}
     city = hash[country.to_sym]
  end

  def info(country)
    city  = find_capital(country)
    puts "The Capital of #{country} isss  #{city}"
  end
end

looker = CapitalLooker.new
puts looker.info("India")