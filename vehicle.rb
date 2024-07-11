class Vehicle
  require "pry-byebug"

  attr_accessor :make, :model, :year, :vehicle_count
  
  def initialize(make, model, year, vehicle_count)
    @make = make
    @model = model
    @year = year
    @vehicle_count = vehicle_count
  end

  
  def display_info
    return "Made by: #{@make}\nModel is : #{@model}\nMade in the year #{@year}\nNumber of vehicles made :#{@vehicle_count}\n"
  end

end

class Bike < Vehicle
  attr_accessor :type

  def initialize(make, model, year, vehicle_count, type)
    super(make, model, year, vehicle_count)
    @type = type
  end


  def display_info
    return "#{super} and the type is : #{@type}\n"
  end

  def self.category
    return "My Bike"
  end
end

class Car < Vehicle
  attr_accessor :number_of_doors

  def initialize(make, model, year, vehicle_count, number_of_doors)
    super(make, model, year, vehicle_count)
    @number_of_doors = number_of_doors
  end

  def display_info
    return "#{super} and the number of doors are: #{@number_of_doors}"
  end

  def self.category
    return "car"
  end
end


puts("Enter the make of bike")
make = gets.chomp.to_s
puts("Enter the model of bike")
model = gets.chomp
puts("Enter the year of the bike")
year = gets.chomp
puts("Enter the vehicle count")
vehicle_count = gets.chomp
puts("Enter type of the bike")
type = gets.chomp

  b = Bike.new(make, model, year, vehicle_count, type)
  puts b.display_info
  puts Bike.category

c=Car.new("November", "Hyundia", 2003, 21, 4)
puts Car.category


puts c.display_info
