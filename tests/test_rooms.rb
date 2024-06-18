require 'minitest/autorun'
require './rooms'
require './price'


class TestAgeChecker < Minitest::Test
  def test_age_check
    assert_equal "Hi Srisai Bodduluri your booking of 3 rooms for 2 days has been initiated.", AgeChecker.new("Srisai", "Bodduluri", 3, 2, 23).age_check, "Something went wrong while booking rooms."
  end
end
  

class TestPrice < Minitest::Test
  def test_calculate_amount
    p = Price.new
    assert_equal "Your total cost is $3600. Thank you for using our services.", p.calculate_amount(2, 3, 20), "Something went wrong while calculating price."
  end
end
