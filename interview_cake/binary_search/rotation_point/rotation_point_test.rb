require_relative "rotation_point"
require "test/unit"

class TestRotationPoint < Test::Unit::TestCase
  def test_simple_left
    assert_equal(5, find_rotation_index([5, 6, 7, 8, 9, 1, 2, 3]))
  end

  def test_simple_right
    assert_equal(1, find_rotation_index([5, 1, 2, 3, 4, 5, 6, 7]))
  end

  def test_single
    assert_equal(0, find_rotation_index([1]))
  end

  def test_no_rotation
    assert_equal(-1, find_rotation_index([1, 2 ,3]))
  end

  def test_two
    assert_equal(1, find_rotation_index([2, 1]))
  end
end
