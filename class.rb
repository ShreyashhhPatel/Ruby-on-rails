
class Coffeemaker
end
coffee = Coffeemaker.new

class Carmaker
end

car1 = Carmaker.new
car2 = Carmaker.new
red_car = Carmaker.new
sports_car = Carmaker.new

puts car1.class
puts car2
puts red_car
puts sports_car

class Biscuitproducer
end

biscuit1 = Biscuitproducer.new
puts biscuit1.class

hello = "Hello BigBinary Academy"

puts hello.class

class Carmaker
end

car1 = Carmaker.new
puts car1.class
puts car1.is_a?(Carmaker)

class Car
  def self.wheels
    puts "The car has 4 wheels."
  end
end

Car.wheels

class Number
  def self.addition(a,b)
    a + b
  end 
end

puts Number.addition(3.6,4.3)