class Stack

  # initialize an empty array
  def initialize
    @items = []
  end

  # push a new item to the last index
  def push(item)
    @items.push(item)
  end

  # remove the last item
  def pop()
      # if the stack is empty, return nil
      # (it would also be reasonable to throw an exception)
      if @items.empty?
        return nil
      end
      return @items.pop()
    end

  # see what the last item is
  def peek()
    if @items.empty?
      return nil
    end
    return @items[-1]
  end
end


class MaxStack
  def initialize
    @stack = Stack.new
    @max_stack = Stack.new
  end

  def push(item)
    @stack.push(item)
    @max_stack.push(item) if !@max_stack.peek || item > @max_stack.peek
  end

  def pop
    popped = @stack.pop
    if popped == @max_stack.peek
      @max_stack.pop()
    end
    return popped
  end

  def peek
    @stack.peek
  end

  def get_max
    @max_stack.peek
  end
end