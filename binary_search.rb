# basic search
def binary_search (arr, target)
  
  arr.length > 1 ? middle = (arr.length) / 2 : middle = arr[0]

  if arr.length == 1
    return arr[0]
  end 
  
  target < arr[middle] ? binary_search(arr.slice(0, middle), target) : binary_search(arr.slice(middle, arr.length - 1), target)

end  

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
#binary_search(arr, 5)


#tree creation / level-order and depth-first traversals
class Node 
  attr_accessor :data, :left_child, :right_child
  def initialize (data, left_child, right_child)
    @data = data
    @left_child = left_child
    @right_child = right_child
  end
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


def level_order_traversal(node)
  if node == nil
    return
  end  
  queue = []
  queue.push(node)
  while !queue.empty?
    current_node = queue[0]
    puts current_node.data
    if current_node.left_child != nil
      queue.push current_node.left_child
    end
    if current_node.right_child != nil
      queue.push current_node.right_child
    end
    queue.shift
  end
end
  
#level_order_traversal(a)

#preorder - depth-first
def preorder_depth_first_traversal (node)

  puts node.data

  if node.left_child == nil && node.right_child == nil
    return
  end  

  preorder_depth_first_traversal(node.left_child)
  preorder_depth_first_traversal(node.right_child)
end  
    
preorder_depth_first_traversal(a)


#inorder - depth-first
def inorder_depth_first_traversal (node)

  if node == nil 
    return
  end  

  inorder_depth_first_traversal(node.left_child)
  puts node.data
  inorder_depth_first_traversal(node.right_child)

end    
  
#inorder_depth_first_traversal(a)


#postorder - depth-first
def postorder_depth_first_traversal (node)

  if node == nil
    return
  end
  
  inorder_depth_first_traversal(node.left_child)
  inorder_depth_first_traversal(node.right_child)
  puts node.data

end
  
#postorder_depth_first_traversal(a)

