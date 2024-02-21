module Drivable
  def drive
    puts "You are now driving the vehicle."
  end
end

class Car
  include Drivable

  def initialize(make, model)
    @make = make
    @model = model
  end

  def display_info
    puts "Car: #{@make} #{@model}"
  end
end

class Truck
  include Drivable

  def initialize(make, model)
    @make = make
    @model = model
  end

  def display_info
    puts "Truck: #{@make} #{@model}"
  end
end

car = Car.new("Ford", "Focus")
truck = Truck.new("Tesla", "Cybertruck")

car.drive
truck.drive

car.display_info
truck.display_info
