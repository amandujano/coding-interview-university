require_relative "queue_two_stacks"
require "test/unit"

class TestQueueTwoStacks < Test::Unit::TestCase
  def test_simple
    two_stacks_queue = QueueTwoStacks.new
    two_stacks_queue.enqueue(1)
    two_stacks_queue.enqueue(2)
    two_stacks_queue.enqueue(3)
    assert_equal(1, two_stacks_queue.dequeue())
  end

  def test_mixed_operations
    two_stacks_queue = QueueTwoStacks.new
    two_stacks_queue.enqueue(1)
    two_stacks_queue.dequeue()
    two_stacks_queue.enqueue(2)
    assert_equal(2, two_stacks_queue.dequeue())
  end

  def test_empty
    two_stacks_queue = QueueTwoStacks.new
    two_stacks_queue.enqueue(1)
    two_stacks_queue.dequeue()
    two_stacks_queue.enqueue(2)
    two_stacks_queue.dequeue()
    assert_equal(nil, two_stacks_queue.dequeue())
  end
end
