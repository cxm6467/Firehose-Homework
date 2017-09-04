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

def reverse_list(list, previous=nil)
  # do stuff
    while list != nil
        old_node = list.next_node
        list.next_node = previous
        previous = list
        list = old_node
    end
    previous
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(11, node3)
print_values(node4)

puts "-------"

revlist = reverse_list(node4)

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