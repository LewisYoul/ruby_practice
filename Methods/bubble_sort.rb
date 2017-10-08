#I did this from memory, woo!

array = [6,1,2,5,7,4,3,9,8,10]

def bubble_sort(array)
  n = array.length - 1

  loop do
    swap = false
    n.times do |i|
      if array[i] > array [i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swap = true
      end
    end
    break if swap == false
  end
  array
end

puts bubble_sort array
