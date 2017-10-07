def countdown(n)
  return if n == 0
  puts n
  countdown(n-1)
end

#countdown 5

def sum_array(array)
  if array.empty?
    return 0
  else
    number = array.pop
    return number + sum_array(array)
  end
end

#puts sum_array([1,2,3])

def factorial(n)
  if n == 0 || n == 1
    return 1
  else
    n * factorial(n - 1)
  end
end

#puts factorial 6

def times3_sum(array)
  if array.empty?
    return 0
  else
    num = array.pop * 3
    num + times3_sum(array)
  end
end

puts times3_sum([1,2,3])
