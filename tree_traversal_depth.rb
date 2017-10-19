class Tree
  attr_accessor :payload, :children, :visited

  def initialize(payload, children)
    @payload = payload
    @children = children
    @visited = false
  end

  def visited?
    @visited
  end

  def children?
    children.any?
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

def traverse(node)
  while node.visited? == false
    next unless node.children?
    unless node.visited?
      node.visited = true
      traverse(node)
    end
    puts node.payload
  end
end

traverse(trunk)
