require_relative "contains_cycle"
require "test/unit"

class TestContainsCycle < Test::Unit::TestCase
  def test_no_cycle
    a = LinkedListNode.new('A')
    b = LinkedListNode.new('B')
    c = LinkedListNode.new('C')
    d = LinkedListNode.new('D')

    a.next = b
    b.next = c
    c.next = d
    assert(!contains_cycle(a))
  end
  def test_cycle
    a = LinkedListNode.new('A')
    b = LinkedListNode.new('B')
    c = LinkedListNode.new('C')

    a.next = b
    b.next = c
    c.next = a
    assert(contains_cycle(a))
  end
end
