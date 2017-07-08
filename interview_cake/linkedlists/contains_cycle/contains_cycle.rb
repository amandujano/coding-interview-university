class LinkedListNode
  attr_accessor :value, :next
  def initialize(value)
    @value = value
    @next  = nil
  end
end

# O(n^2) implementation
def contains_cycle(node)
  # always returns false
  # Implement
  previous_values = []
  current_node = node
  while current_node.next != nil
    return true if previous_values.include? current_node
    previous_values << current_node
    current_node = current_node.next
  end
  false
end

# O(n) implementation, with a set (hash table?).
# This is also O(n) space
def contains_cycle(node)
  # always returns false
  # Implement
  previous_values = {}
  current_node = node
  while current_node.next != nil
    return true if previous_values[current_node]
    previous_values[current_node] = true
    current_node = current_node.next
  end
  false
end

# The smart arse implemenation: O(n) time and O(1) space
# The two runner solution, some sort of a blind insight
def contains_cycle(node)
  slow_runner = node
  fast_runner = node
  while fast_runner != nil && fast_runner.next != nil
    fast_runner = fast_runner.next.next
    slow_runner = slow_runner.next
    return true if fast_runner == slow_runner
  end
  false
end