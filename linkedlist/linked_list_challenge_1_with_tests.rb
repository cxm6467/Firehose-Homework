## Linked listnode creates nodes
class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

## print values in a list
def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

## Stack to help reverse a given list
class Stack
    attr_reader :top

    def initialize
        @top = nil
    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
        @top = LinkedListNode.new(value, @top)
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        # I RETURN A VALUE
        return nil if @top.nil?
        original_top = @top.value
        @top = @top.next_node
        original_top
    end
end

## Reverse a given list
def reverse_list(list)
    # ADD CODE HERE
    stack = Stack.new

    while list
        # ADD CODE HERE
        stack.push(list.value)
        list = list.next_node
    end

    # ADD CODE HERE
    puts "Snack Stack #{stack}"
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)

### Test ###
# RSpec.describe Stack do
#   describe '#pop' do
#     it 'will return nil when empty'
#     it 'will return the last item pushed onto the stack'
#     it 'will return nil if I pushed once then pop twice'
#     describe '#push' do
#       it 'will add to the top of the stack'
#     end
#   end
# end