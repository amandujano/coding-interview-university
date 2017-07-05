# singly linked

class LinkedListNode

  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next  = nil
  end
end

def delete_node(node_to_delete)
  # change node to be deleted's value to be next node's value
  if node_to_delete == nil
    raise 'You cannot delete an empty node'
  end
  if node_to_delete.next == nil
    raise 'Oops, very very surreal I know, but you cannot delete the last node. Technology eh?'
  end
  node_to_delete.value = node_to_delete.next.value

  #change node to be deleted's next to be next's next
  node_to_delete.next = node_to_delete.next.next
end

# helper for testing/debugging
def to_string(node)
  str = node.value
  node = node.next
  while node!= nil
    str = str + ' , ' + node.value
    node = node.next
  end
  str
end

a = LinkedListNode.new('A')
b = LinkedListNode.new('B')
c = LinkedListNode.new('C')

a.next = b
b.next = c

delete_node(b)