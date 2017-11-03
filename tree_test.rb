## This is the datastructure for a binary three
## Payload is the current payload, left and right are the
class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
  end
end

def build_tree(array)
  previous_val = 0
  trunk = BinaryTree.new(array[0], nil, nil)
  array.each do |element|
    if element > previous_val
      trunk.right = element
    else
      trunk.left = element
    end
    previous_val = element
  end
  puts trunk.inspect
end
tree = [7, 4, 9, 1, 6, 14, 10]

build_tree(tree)
