def bubble_sort(array)
  (0..array.size - 1).each do |_i|
    array.each_with_index do |value, index|
      break if (array[index + 1]).nil?

      array[index], array[index + 1] = array[index + 1], array[index] if (array[index + 1]) < value
    end
  end
  array

end
p bubble_sort([4,3,78,2,0,2])