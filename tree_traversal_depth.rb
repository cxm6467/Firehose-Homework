class Tree
  attr_accessor :payload, :children, :checked

  def initialize(payload, children)
    @payload = payload
    @children = children
    @checked = false
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
  puts "+-+-+- >> Starting from #{node.payload}"
  node.children.each do |n|
    n.checked = true
    traverse(n)
    puts "Value: #{n.payload}, Checked? #{n.checked}" unless n.payload == 11
    puts "<###>Found it! Found 11" if n.checked && n.payload == 11
  end
end
traverse(trunk)
