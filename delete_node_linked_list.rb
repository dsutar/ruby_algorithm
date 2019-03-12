def delete_node(node_to_delete)

  # Delete the input node from the linked list
  next_node = node_to_delete.next
  
  if node_to_delete
    node_to_delete.value = next_node.value
    node_to_delete.next = next_node.next
  else
    railse "Can't delete the last node"
  end

end




# Tests

class LinkedListNode
  attr_accessor :value, :next

  def initialize(value, next_node = nil)
    @value = value
    @next = next_node
  end

  def values
    vs = []

    node = self
    while node
      vs << node.value
      node = node.next
    end

    vs
  end
end

def run_tests
  desc = 'node at beginning'
  fourth = LinkedListNode.new(4)
  third = LinkedListNode.new(3, fourth)
  second = LinkedListNode.new(2, third)
  first = LinkedListNode.new(1, second)
  delete_node(first)
  actual = first.values
  expected = [2, 3, 4]
  assert_equal(actual, expected, desc)

  desc = 'node in middle'
  fourth = LinkedListNode.new(4)
  third = LinkedListNode.new(3, fourth)
  second = LinkedListNode.new(2, third)
  first = LinkedListNode.new(1, second)
  delete_node(second)
  actual = first.values
  expected = [1, 3, 4]
  assert_equal(actual, expected, desc)

  desc = 'node at end'
  fourth = LinkedListNode.new(4)
  third = LinkedListNode.new(3, fourth)
  second = LinkedListNode.new(2, third)
  first = LinkedListNode.new(1, second)
  assert_raises(desc) { delete_node(fourth) }

  desc = 'one node in list'
  unique = LinkedListNode.new(1)
  assert_raises(desc) { delete_node(unique) }
end

def assert_equal(a, b, desc)
  if a == b
    puts "#{desc} ... PASS"
  else
    puts "#{desc} ... FAIL: #{a} != #{b}"
  end
end

def assert_raises(desc)
  begin
    yield
    puts "#{desc} ... FAIL"
  rescue
    puts "#{desc} ... PASS"
  end
end

run_tests