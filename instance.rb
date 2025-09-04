puts "hello instance"

class Car
  def play_music
    puts "playing music"
  end

  def stop
    puts "stopping the car"
  end

  def turn_lights_on
    puts "turning the lights on"
  end
end

car1 = Car.new
car1.play_music
car1.stop
car1.turn_lights_on

class Biscuit
  def eat
    puts "eating biscuit"
  end

  def gift
    puts "biscuit is a wonderful gift"
  end
end

biscuit1 = Biscuit.new

biscuit1.eat
biscuit1.gift

puts "--- IGNORE ---"
class Biscuit
  def gift(name)
    puts "#{name} this biscuit is a gift for you"
  end
end

biscuit1 = Biscuit.new
biscuit2 = Biscuit.new

biscuit1.gift("Mike")
biscuit2.gift("Adam")

class BoxingMatch
  def info(person1,person2)
    puts "This boxing match is between #{person1} and #{person2} "
  end
end

match = BoxingMatch.new
match.info("Peter", "Larry")

puts "--- IGNORE ---"

class Carmaker
  def turn(direction)
    @direction = direction
    puts "The car is turning"
  end

  def current_direction
    puts "The current direction is #{@direction}"
  end
end

car1 = Carmaker.new
car1.turn("left")
car1.current_direction

puts "--- IGNORE ---"

class House
  def building_number(new_number)
    @new_number = new_number
  end

  def info
    puts "The building number is #{@new_number}"
  end
end

house = House.new
house.building_number("A872")
house.info


puts "--- IGNORE ---"
class Employee
  @@count = 2
  def print_employee_count
    puts @@count 
  end
end

employee_1 = Employee.new
employee_1.print_employee_count

puts "--- IGNORE ---"

class Coffeemaker
  def price(condition)
    price = condition == "hot" ? "$4" : "$3"
  end

  def print(condition)
    cost = price(condition)
    puts "The cost of the coffee is #{cost}"
  end
end

coffee1 = Coffeemaker.new
coffee1.print("hot")