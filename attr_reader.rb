class Burger
  def initialize(size)
    @size = size
  end
  
  def size 
    @size 
  end
  
end

burger = Burger.new("medium")
puts burger.size

puts "-----------------"

class Book
  attr_reader  :type, :pages, :cover
  def initialize(type, pages, cover)
    @type = type
    @pages = pages
    @cover = cover
  end
end

dreams_bottled = Book.new("fiction", 542, "softcover")
puts dreams_bottled.type
puts dreams_bottled.pages
puts dreams_bottled.cover

puts "-----------------"

class CoffeeMaker
  attr_accessor :colour, :temperature, :quantity, :origin, :brand
  def initialize(colour, temperature, quantity, origin, brand)
    @colour = colour
    @temperature = temperature
    @quantity = quantity
    @origin = origin
    @brand = brand
  end
end

coffee1 = CoffeeMaker.new("dark", "hot", "small", "Brunei", "Domos")
coffee1.colour = "light"
puts coffee1.colour

coffee1.temperature = "cold"
puts coffee1.temperature

coffee1.quantity = "large"
puts coffee1.quantity

coffee1.origin = "Damascus"
puts coffee1.origin

coffee1.brand = "Misty"
puts coffee1.brand