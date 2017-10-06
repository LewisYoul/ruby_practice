class Car
  attr_accessor :cost, :age, :color

  def initialize(color, cost, age)
    @color = color
    @cost = cost
    @age = age
  end

  def summary
    puts "Your car is #{color}, costs #{cost} and is #{age} years old."
  end
local ruby compiler atom
end

ford = Car.new "Pink", "£2900", 3
nissan = Car.new "Gold", "£40000", 5

car_array = []

car_array << ford

puts car_array[0].inspect

ford.color = "Turquoise"


puts ford.color
puts ford.inspect
puts ford.instance_of? Car

puts ford.summary
puts nissan.summary
