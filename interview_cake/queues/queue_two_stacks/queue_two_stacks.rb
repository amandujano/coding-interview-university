class QueueTwoStacks
  def initialize
    @in_stack = []
    @out_stack = []
  end

  def dequeue
    # putting everything in the in_stack to the out_stack
    if @out_stack.size == 0
      item = @in_stack.pop()
      while !item.nil?
        @out_stack.push(item)
        item = @in_stack.pop()
      end
    end

    return nil if @out_stack.size == 0
    @out_stack.pop()
  end

  def enqueue(item)
    @in_stack.push(item)
  end
end