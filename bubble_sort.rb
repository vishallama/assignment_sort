# bubble_sort.rb

def bubble_sort(array)
  array.length.times do
    (0..array.length - 2).each do |j|
      if array[j] > array[j + 1]
        temp = array[j]
        array[j] = array[j + 1]
        array[j + 1] = temp
      end
    end
  end
  array
end

bubble_sort( [1,3,7,2,5] ) # => [1, 2, 3, 5, 7]
bubble_sort( [1] ) # => [1]
bubble_sort( [] ) # => []
