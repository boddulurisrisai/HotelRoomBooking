require 'minitest/autorun'
require './vehicle.rb'

class TestBike < Minitest::Test
def setup
  @b = Bike.new("November", "Hyundia", 2003, 21, "Suziki")
end

    def test_display_info
      expected_output="Made by: November\nModel is : Hyundia\nMade in the year 2003\nNumber of vehicles made :21\nand the type is : Suziki"
      actual_output = @b.display_info
      assert_equal expected_output, actual_output, "Something failed"
    end

    def test_category
      expected_outcome = "My Bike"
      actual_outcome = Bike.category
      assert_equal expected_outcome, actual_outcome, "Failed"
  end
end

class TestCar < Minitest::Test
  def test_display_info
    expected_output="Made by: November\nModel is : Hyundia\nMade in the year 2003\nNumber of vehicles made :21\n and the number of doors are: 4"
    actual_outcome = Car.new("November", "Hyundia", 2003, 21, 4).display_info
    assert_equal expected_output, actual_outcome, "Failed"
  end

  def test_category
    expected_outcome = "car"
    actual_outcome = Car.category
    assert_equal expected_outcome, actual_outcome, "Something went wrong"
  end
end
