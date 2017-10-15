def factorial(n)
  if n == 0 || n == 1
    return 1
  else
    n * factorial(n-1)
  end
end

puts factorial 5
