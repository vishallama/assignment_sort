# merge sort

def merge_sort(array)
  return array if array.length < 2

  i = (array.length / 2) - 1
  arr1 = merge_sort(array[0..i])
  arr2 = merge_sort(array[(i+1)..-1])
  merge(arr1, arr2)
end

def merge(arr1, arr2)
  return_array = []
  i = 0
  j = 0

  while i != arr1.length  && j != arr2.length
    if arr1[i] < arr2[j]
      return_array << arr1[i]
      i += 1
    else
      return_array << arr2[j]
      j += 1
    end
  end

  while i != arr1.length 
    return_array << arr1[i]
    i += 1
  end

  while j != arr2.length 
    return_array << arr2[j]
    j += 1
  end

  return_array
end

# test merge
merge( [],[] ) # => []
merge( [1],[] ) # => [1]
merge( [1,3,7],[2,5] ) # => [1, 2, 3, 5, 7]

# test merge_test
merge_sort( [1,3,7,2,5] ) # => [1, 2, 3, 5, 7]
merge_sort( [1,3,7,2,5,10,-1,9,6] ) # => [-1, 1, 2, 3, 5, 6, 7, 9, 10]

