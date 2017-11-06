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

## Building BinaryTree objects to then
## build an array to sort and return :)
class BTreeSort
  def self.sort(array)
    trunk = build_tree(array)
    sort_tree(trunk)
  end

  def self.build_tree(array)
    trunk = BinaryTree.new(array[0], nil, nil)
    array[1..-1].each do |payload|
      ## Place element in tree
      put_payload_in_tree(trunk, payload)
    end
    trunk
  end

  def self.put_payload_in_tree(node, payload)
    ## if the payload is greater or less than the trunks payload
    ## set left or right values
    if payload > node.payload
      # trunk.right = BinaryTree.new(payload, nil, nil)
      put_payload_on_the_right(node, payload)
    else
      put_payload_on_the_left(node, payload)
    end
  end

  def self.put_payload_on_the_right(node, payload)
    if node.right.nil?
      node.right = BinaryTree.new(payload, nil, nil)
    else
      put_payload_in_tree(node.right, payload)
    end
  end

  def self.put_payload_on_the_left(node, payload)
    if node.left.nil?
      node.left = BinaryTree.new(payload, nil, nil)
    else
      put_payload_in_tree(node.left, payload)
    end
  end

  def self.sort_tree(node, sorted_tree = [])

    sort_tree(node.left, sorted_tree) if node.left
    sorted_tree << node.payload
    sort_tree(node.right, sorted_tree) if node.right

    sorted_tree
  end
end

seven = BinaryTree.new(7, nil, nil)
five  = BinaryTree.new(5, nil, nil)
four  = BinaryTree.new(4, nil, nil)
six   = BinaryTree.new(6, nil, seven)
three = BinaryTree.new(3, nil, six)
two   = BinaryTree.new(2, four, five)
trunk = BinaryTree.new(1, two, three)

## Build tree
## Build an array from it
tree = [7, 4, 9, 1, 6, 14, 10]
BTreeSort.sort(tree)
## Sort that array

require 'rspec'

RSpec.describe BTreeSort, type: :model do
  describe 'btree sort should work' do
    it 'should order the array' do
      expected = [1, 4, 6, 7, 9, 10, 14]
      array = [7, 4, 9, 1, 6, 14, 10]
      expect(BTreeSort.sort(array)).to eq expected
    end
  end
end
