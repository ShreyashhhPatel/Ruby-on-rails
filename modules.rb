module Info
  def name
    puts "Roger Smith"
  end
end

class Person
  include Info
end

p1 = Person.new
p1.name

puts "----------------"

module Speed
    def calculate_speed
        puts "current speed is now visible on your dashboard"
    end
end


class Car
    include Speed
end

class Rocket
  include Speed
end

class Ship
  include Speed
end

car1 = Car.new
car1.calculate_speed

puts " -------- "

module Info
  def name
    puts "Roger Smith"
  end
end

class Person
  include Info
  def name
    puts "name from the Person class"
  end
end

p1 = Person.new
p1.name

puts "------------"

module Info1
  def name
    puts "Roger Smith"
  end
end

module Info2
  def name
    puts "Mary Brett"
  end
end

class Person
  include Info1
  include Info2
end

p1 = Person.new
p1.name

module Info1
  def name
    puts "Roger Smith"
  end
end

module Info2
  def name
    puts "Mary Brett"
  end
end

class Person
  include Info1
  include Info2
end

puts Person.ancestors
puts Person.included_modules

module Info
  def name
    puts "Roger Smith"
  end
end

class Person
  include Info
end

module Info
  def name
    puts "Mike Bohanan"
  end
end

p1 = Person.new
p1.name