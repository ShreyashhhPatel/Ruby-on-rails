# class Car
#   def fast
#     "Cars are fast!"
#   end
# end

# class ElectricCar < Car
#   def fast
#     super + " but an electric car can accelerate faster!"
#   end
# end

# tesla = ElectricCar.new
# puts tesla.fast

# print "-----"
# puts

# class Car
#   def runs_on(fuel)
#     "Your car runs on #{fuel}."
#   end
# end

# class ElectricCar < Car
#   def runs_on
#     super("battery")
#   end
# end

# tesla = ElectricCar.new
# puts tesla.runs_on

puts "-----------"

class Car
  def initialize
    @driving = "You are driving a car"
  end
end

class PetrolCar < Car
  def drive
    @driving + ", which is petrol powered."
  end
end

class ElectricCar < Car
  def drive
    @driving + ", which is battery powered."
  end
end

ferrari = PetrolCar.new
puts ferrari.drive
tesla = ElectricCar.new
puts tesla.drive