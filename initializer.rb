class Carmaker
  def initialize(color)
    @color = color
  end

  def current_color
    puts "Color of this car is #{@color}"
  end
end

car1 = Carmaker.new("red")
car1.current_color