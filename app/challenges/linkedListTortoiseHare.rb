class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

def infinite_loop?(list)
  tortoise = list.next_node
  hare = list.next_node


  until hare.nil?
    hare = hare.next_node
    return false if hare.nil?

    hare = hare.next_node
    tortoise = tortoise.next_node
    return true if hare == tortoise
  end

  return false
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(22, node3)
node5 = LinkedListNode.new(34, node4)
node6 = LinkedListNode.new(43, node5)


puts '---------------'


puts infinite_loop?(node6)
node1.next_node = node6 # infinite loop
puts infinite_loop?(node6)




