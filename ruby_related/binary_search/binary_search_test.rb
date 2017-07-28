require_relative "binary_search"
require "test/unit"

class TestBinarySearchRecursive < Test::Unit::TestCase
  def test_not_found
    assert_equal(-1, binary_search_recursion([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 11, 0, 9))
  end

  def test_odd
    assert_equal(2, binary_search_recursion([1, 2, 3, 4, 5, 6, 7], 3, 0, 6))
  end
  def test_even
    assert_equal(2, binary_search_recursion([1, 2, 3, 4, 5, 6, 7, 8], 3, 0, 7))
  end

  def test_one
    assert_equal(0, binary_search_recursion([1], 1, 0, 0))
  end

  def test_two
    assert_equal(0, binary_search_recursion([1, 2], 1, 0, 1))
  end
end
