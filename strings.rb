hello1 = :hello
hello2 = :hello
hello3 = :hello

puts hello1
puts hello2
puts hello3

puts "hello".object_id
puts "hello".object_id
puts "hello".object_id

puts :hello.object_id
puts :hello.object_id
puts :hello.object_id

puts "hello".to_sym
puts :hello.to_s

# puts :hello << "world"

class Person

  attr_reader :name
  attr_writer :height

  def initialize(name:, height:)
    @name = name
    @height = height
  end
end

mentor = Person.new(name: 'Joe', height: '5')

person2 = { :name => "Sam", :age => 47}
age_of_person = person2[:age]

puts age_of_person