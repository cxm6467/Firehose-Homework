class Car 
  attr_accessor :tires, :doors
  def initialize(tires, doors)
    self.tires = tires
    self.doors = doors
  end

  def output_car
    puts "This car has #{self.tires} tires and #{self.doors} doors."
  end
end

car = Car.new(4,4)
car.output_car