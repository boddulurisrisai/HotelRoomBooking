class Vehicle
  require "pry-byebug"

  attr_accessor :model, :vehicle_count
  attr_reader :make, :year
  
  def initialize(make, model, year, vehicle_count)
    @make = make
    @model = model
    @year = year
    @vehicle_count = vehicle_count
  end

  def make=(value)
    unless value.is_a(String)
      raise ArgumentError, 'Make must be a string'
    end
    @make = value.capitalize
  end

  def year=(value)
    unless value.is_a?(Integer)
      raise ArgumentError, "Year must be an Integer"
    end
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
    return "#{super}and the type is : #{@type}"
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
make = gets.chomp
puts make.class
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
#puts Car.category


puts c.display_info
