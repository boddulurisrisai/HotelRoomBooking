
class Price

def calculate_amount(days, rooms)
  if validateRooms(rooms)
    cost = days * rooms * 25 *24
    puts "Your total cost is $#{cost}"
    puts "Thank you for using our services."
  else
    puts "We don't have #{rooms} rooms in our restaurant"
  end
end

def validateRooms(rooms)
  if rooms <=3
    return true
  else
    return false
end
end

end
