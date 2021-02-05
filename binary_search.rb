=begin

def binary_search (arr, target)
  
  arr.length > 1 ? middle = (arr.length) / 2 : middle = arr[0]

  if arr.length == 1
    return arr[0]
  end 
  
  target < arr[middle] ? binary_search(arr.slice(0, middle), target) : binary_search(arr.slice(middle, arr.length - 1), target)

end  

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
binary_search(arr, 5)

=end


#tree creation / traversal
class Node 
  attr_accessor :data, :left_child, :right_child
  def initialize (data, left_child, right_child)
    @data = data
    @left_child = left_child
    @right_child = right_child
  end
end  

$queue = []

def enqueue (node)
  $queue.push(node.left_child)
  $queue.push(node.right_child)
end  

def dequeue ()
  $queue.shift()
end  


o = Node.new("O", nil, nil)
n = Node.new("N", nil, nil)
m = Node.new("M", nil, nil)
l = Node.new("L", nil, nil)
k = Node.new("K", nil, nil)
j = Node.new("J", nil, nil)
i = Node.new("I", nil, nil)
h = Node.new("H", nil, nil)
g = Node.new("G", n, o)
f = Node.new("F", l, m)
e = Node.new("E", j, k)
d = Node.new("D", h, i)
c = Node.new("C", f, g)
b = Node.new("B", d, e)
a = Node.new("A", b, c)

def level_order_traversal (node)

  puts node.data
  
  dequeue

  if $queue.empty? 
    $queue.push(node)
  end


  if node.left_child == nil || node.right_child == nil
    puts node.data
    dequeue
    enqueue($queue[0])
  end

  
  enqueue(node)  
  level_order_traversal($queue[0])
 
end


level_order_traversal(a)  
    
