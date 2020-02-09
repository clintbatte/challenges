# Why a linked list? "One disadvantage of using arrays to store data is that...
# arrays are static structures and therefore cannot be easily extended or reduced to fit the data set.
# Arrays are also expensive to maintain new insertions and deletions." - https://www.cs.cmu.edu/~adamchik/15-121/lectures/Linked%20Lists/linked%20lists.html
# Pros → 1) Linked Lists allocate memory when program is initiated and therefore can expand in real time without memory overload 2) Insertion and deletion is easy 3) It’s easy to building linear data structures such as stacks and queues with linked lists.
# Cons → 1) Its memory is intensive because each element holds a value and a pointer 2) takes longer to access an element 3) hard to reverse traverse
# pro con resource https://medium.com/@zylberberg.jonathan/linked-lists-f656bd22f2fa
# Start with creation of a node, arguably can be a method within the SLL class itself
class ListNode
  attr_accessor :next, :value
  # Construction of node takes value and stores it to the @value variable
  # Assign next to be nothing since we are adding to the end of the linked list
  def initialize(value, nextVal = nil)
    @value = value
    #the reference to the next node will be nil unless we assign it
    @next = nextVal
  end
  # method to print out node values
  def print
    "Node with value: #{@value}"
  end
end
# TODO: simplify this code it is somewhat difficult to read. while loops are confusing
# More granular way to learn this?
class SinglyLinkedList
  # Create a brand new list which will be empty, hence the head is nil
  attr_accessor :head
  def initialize
    @head = nil
  end
  def append(value)
    if @head
      find_tail.next = ListNode.new(value)
    else
      @head = ListNode.new(value)
    end
  end
  # Find the end of the list
  def find_tail
    # start from the head of the list (remember we can only start at the beginning we cannot pick and choose an index like an array)
    current_node = @head
    # if there is only the head (1 node) then we want to return that
    return current_node if !current_node.next
    # if there are any nodes following the head of the list then we want to iterate through the nodes of the list...
    # ... and return the very last one
    # while node.next != nil, node will continue to reassign itself to the next node in the list
    # once node.next = nil we know that we are at the tail of the list. Now we return that node
    while current_node.next != nil
      current_node = current_node.next
    end
    return current_node
  end
  def print
    current_node = @head
    puts current_node.value
    while (current_node = current_node.next)
      puts current_node.value
    end
  end
end
sll = SinglyLinkedList.new
sll.append(1)
sll.append(2)
sll.append(3)
sll.print
puts '----------------'
