class BinaryTreeNode

  attr_accessor :value
  attr_reader :left, :right

  def initialize(value)
    @value = value
    @left  = nil
    @right = nil
  end

  def insert_left(value)
    @left = BinaryTreeNode.new(value)
    return @left
  end

  def insert_right(value)
    @right = BinaryTreeNode.new(value)
    return @right
  end
end

def is_balanced(root)
  return true if !root
  depths = Set.new
  nodes = []
  nodes.push([root, 0])
  while !nodes.empty?
    node, depth = nodes.pop
    # Found leaf
    if !node.left && !node.right
      depths.push(depth)
      if (depths.length > 2) || (depths.length == 2 && (depths[0] - depths[1]).abs > 1)
        return false
      end
    else
      if node.left
        nodes.push([node.left, depth + 1])
      end
      if node.right
        nodes.push([node.right, depth + 1])
      end
    end
  end
  return true
end