# merge sort

def merge_sort(array)
  return array if array.length < 2
  i = array.length/2
  arr1 = merge_sort(array[0..i])
  arr2 = merge_sort(array[i+1..-1])
  merge(arr1, arr2)
end

def merge(arr1, arr2)
  return_array = []
  i = 0
  j = 0
  (arr1.length+arr2.length).times do
    if arr1[i] < arr2[j]
      return_array << arr1[i]
      i += 1 unless i == arr1.length-1
    else
      return_array << arr2[j]
      j += 1 unless j ==arr2.length-1
    end
  end
  return_array
end

p merge( [1,3,7],[2,5] ) # => [1, 2, 3, 5, 7]
#p merge_sort( [1] ) # => [1]
#p merge_sort( [] ) # => []
