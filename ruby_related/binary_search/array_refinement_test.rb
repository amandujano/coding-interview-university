require_relative "array_refinement"
require "test/unit"

class TestArrayUnrefined < Test::Unit::TestCase
  def test_not_using_refinement
    assert_equal(nil, [1, 2, 3].index(0))
  end
end


class TestArrayRefined < Test::Unit::TestCase
  using ArrayRefinement
  def test_using_refinement
    assert_equal(-1, [1, 2, 3].index(0))
  end
end

