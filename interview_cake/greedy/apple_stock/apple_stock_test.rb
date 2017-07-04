require_relative "apple_stock"
require "test/unit"

class TestAppleStock < Test::Unit::TestCase
  def test_simple
    assert_equal(6, get_max_profile([10, 7, 5, 8, 11, 9]))
  end
  def test_same_price
    assert_equal(0, get_max_profile([5, 5, 5, 5 ,5, 5, 5]))
  end

  def test_decreasing
    assert_equal(-1, get_max_profile([7, 6, 3, 2, 1, 0]))
  end

  def test_exception
    exception = assert_raise RuntimeError do
      get_max_profile([99])
    end
    assert_equal 'You must have more than one day of stock trading', exception.message
  end
end
