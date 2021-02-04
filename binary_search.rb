def binary_search (arr, target)
  
  arr.length > 1 ? middle = (arr.length) / 2 : middle = arr[0]

  if arr.length == 1
    return arr[0]
  end 
  
  target < arr[middle] ? binary_search(arr.slice(0, middle), target) : binary_search(arr.slice(middle, arr.length - 1), target)

end  

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
binary_search(arr, 5)
