require 'minitest/autorun'
require './rooms'

=begin
class TestAgeChecker < Minitest::Test
  def test_age_check
    assert_equal "Hi Srisai Bodduluri your booking of 3 rooms for 2 days has been successfully completed", AgeChecker.new("Srisai", "Bodduluri", 3, 2, 23), "Error"
  end
end
=end



class TestAgeChecker < Minitest::Test
  def test_age_check
    expected_output = "Hi Srisai Bodduluri your booking of 3 rooms for 2 days has been successfully completed"
    actual_output = AgeChecker.new("Srisai", "Bodduluri", 3, 2, 23).age_check
    assert_equal(expected_output, actual_output)
  end
end
