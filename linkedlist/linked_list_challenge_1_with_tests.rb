class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_noed = next_node
  end
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