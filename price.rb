
class Price

  #calculates the prices for each hour the person stays in the hotel.
def calculate_amount(rooms, days, age)
case
when validateRooms(rooms) && validateDays(days) && age>=18
  cost = days * rooms * 25 *24
  "Your total cost is $#{cost}. Thank you for using our services."
when age < 18
  puts "You're a teenager"
when !validateRooms(rooms)
  puts "We don't have #{rooms} rooms in our restaurant"
when !validateDays(days)
  puts "We won't accomodate more than 10 days."
end
end

#Checks whether the required rooms is less than 3 or not.
def validateRooms(rooms)
  if rooms <=3
    return true
  else
    return false
end
end

#checks whether the required days is less than 10 or not.
def validateDays(days)
  if days > 10
    
    return false
  else
    return true
  end
end

end
