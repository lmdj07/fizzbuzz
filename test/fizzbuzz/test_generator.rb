require_relative '../test_helper'

# These tests test the Generator class
class TestGame < Minitest::Test
	# This method runs once before each test
	# It sets an instance member variable that can be used in the tests
	def setup
		@generator = FizzBuzz::Generator.new()
	end

  def test_the_size_of_the_generated_list
    result = @generator.create(5)
    assert_equal(5, result.size)
    result = @generator.create(20)
    assert_equal(20, result.size)
    result = @generator.create(100)
    assert_equal(100, result.size)
  end

	def test_numbers_that_are_not_substituted
    skip
		result = @generator.create(10)
		assert_equal(1, result[0])
    assert_equal(2, result[1])
    assert_equal(4, result[3])
  end

  def test_numbers_that_are_divisible_by_3
    skip
    result = @generator.create(100)
    
  end

  def test_numbers_that_are_divisible_by_5
    skip
  end

  def test_numbers_that_are_divisible_by_3_and_5
    skip
  end
  	
end