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

## Stack to help reverse a list
class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
    end

    # Pop an item off the stack.
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        # I RETURN A VALUE
    end

end

## Reverse a given list
def reverse_list(list)
    # ADD CODE HERE

    while list
        # ADD CODE HERE
        list = list.next_node
    end

    # ADD CODE HERE
end


### Test ###
RSpec.describe Stack do
  describe '#pop' do
    it 'will return nil when empty'
    it 'will return the last item pushed onto the stack'
    it 'will return nil if I pushed once then pop twice'
    describe '#push' do
      it 'will add to the top of the stack'
    end
  end
end