require_relative "max_stack"
require "test/unit"

class TestMaxStack < Test::Unit::TestCase
  def test_simple
    max_stack = MaxStack.new
    max_stack.push(1)
    max_stack.push(5)
    max_stack.push(3)
    assert_equal(5, max_stack.get_max())
  end

  def test_one
    max_stack = MaxStack.new
    max_stack.push(1)
    assert_equal(1, max_stack.get_max())
  end

  def test_empty
    max_stack = MaxStack.new
    assert_equal(nil, max_stack.get_max())
  end

  def test_pop
    max_stack = MaxStack.new
    max_stack.push(1)
    max_stack.push(5)
    max_stack.push(3)
    max_stack.pop()
    max_stack.pop()
    assert_equal(1, max_stack.get_max())
  end
end
