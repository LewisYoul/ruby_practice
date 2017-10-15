def sum_array(array)
  return 0 if array.empty?
  array.pop + sum_array(array)
end

arr = [1,2,3,4,5,6]

puts sum_array(arr)
