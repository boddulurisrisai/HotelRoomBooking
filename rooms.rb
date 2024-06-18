require_relative 'price'
class Bookings
  attr_reader :first_name, :last_name, :no_of_rooms, :days, :age

  def initialize(first_name, last_name, no_of_rooms, days, age)
    self.first_name = first_name
    self.last_name = last_name
    @no_of_rooms = no_of_rooms
    @days = days
    @age = age
  end

#Capitalizes the first name
  def first_name=(value)
    unless value.is_a?(String)
      raise TypeError, 'First name must be a string'
    end
    @first_name = value.capitalize
  end 

#Capitalizes the last name
def last_name=(value)
  unless value.is_a?(String)
    raise TypeError, 'Last name must be a string'
  end
  @last_name = value.capitalize
end
end

#Checks whether the person is eligible to book a room.
class AgeChecker < Bookings
  def age_check
    if age < 18
    "Hi #{first_name} #{last_name} your booking of #{no_of_rooms} rooms for #{days} days is not successful as your age is less than 18 years."
    else
    "Hi #{first_name} #{last_name} your booking of #{no_of_rooms} rooms for #{days} days has been successfully completed."
    end
  end

end



#Takes the input from Command Line
puts "Enter your first name:"
first_name = gets.chomp
puts "Enter your last name:"
last_name = gets.chomp
puts "Enter age:"
age = gets.chomp.to_i
puts "Enter number of rooms required:"
no_of_rooms = gets.chomp.to_i
puts "Enter the number of days you want to book the room:"
days = gets.chomp.to_i
b=AgeChecker.new(first_name, last_name, no_of_rooms, days, age)
b.age_check
c=Price.new
c.calculate_amount(no_of_rooms, days, age)
