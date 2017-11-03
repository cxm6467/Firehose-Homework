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
    trunk = BinaryTree.new(array[0], nil, nil)
    array.each do |element|
      if element > trunk.payload
        trunk.right = BinaryTree.new(element, trunk, nil)
      else
        trunk.left = BinaryTree.new(trunk, element, nil)
      end
    end
    puts trunk.payload
    if trunk.right
      puts trunk.right
    elsif trunk.left
      puts trunk.left
    end
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
