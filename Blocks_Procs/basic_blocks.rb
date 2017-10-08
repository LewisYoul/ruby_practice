
array = [1,2,3]

#puts array.count { |n| n%2 == 0 }

####

def reject list, &block
  result = []
  list.each do |n|
    if (block.call(n) == false)
      result << n
    end
  end
  result
end

#puts reject [1,1,1,1,5,2,3,4] { |n| n == 5 }

#Create a method select that accepts a list and a block,
#and returns a new array of elements for which the given block returns true.

def selector list, &block
  result = []
  list.map do |n|
    unless block.call(n) == false
      result << n
    end
  end
  result
end

puts selector [1,1,1,1,5,2,3,4,12,13,7,8,9] { |n| n >= 5 }
