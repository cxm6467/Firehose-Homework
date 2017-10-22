class MyQueue
  def initialize
    @queue = []
  end

  def enqueue(item)
    @queue.push(item)
  end

  def dequeue
    @queue.shift
  end
end

class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end
end


# The "Leafs" of a tree, elements that have no children
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node   = Tree.new(4, [])

# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk = Tree.new(2, [seventh_node, shallow_fifth_node])

def traverse(node, payload_to_find)
  # return node if node.payload == payload_to_find
  # node.children.each do |child|
  #   is_found = traverse(child,payload_to_find)
  #   return is_found unless is_found.nil?
  # end
  # return nil
  queue = MyQueue.new
  queue.enqueue(node)
  while current_node = queue.dequeue
    return current_node if current_node.payload == payload_to_find
    current_node.children.each do |child|
      queue.enqueue(child)
    end
  end
  return nil
end

puts traverse(trunk, 2) == trunk
puts traverse(trunk, 7) == seventh_node
puts traverse(trunk, 5) == shallow_fifth_node
puts traverse(trunk, 5) != deep_fifth_node
