require_relative "delete_node"
require "test/unit"

class TestDeleteNode < Test::Unit::TestCase
  def test_simple
    a = LinkedListNode.new('A')
    b = LinkedListNode.new('B')
    c = LinkedListNode.new('C')
    d = LinkedListNode.new('D')

    a.next = b
    b.next = c
    c.next = d

    delete_node(b)
    assert_equal('A , C , D', to_string(a))
  end
  def test_nil
    exception = assert_raise RuntimeError do
      delete_node(nil)
    end
    assert_equal 'You cannot delete an empty node', exception.message
  end


  def test_last_node
    a = LinkedListNode.new('A')
    exception = assert_raise RuntimeError do
      delete_node(a)
    end
    assert_equal 'Oops, very very surreal I know, but you cannot delete the last node. Technology eh?', exception.message
  end
end
