class User
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

user1 = User.new('Oliver')

user1 = nil

if user1&.name
  puts "We have a new user."
end

print"---------------\n"

class Liquid
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

liquid1 = Liquid.new('milk')

if liquid1&.name
    puts "Milk is energy"
end

