array = ["banana", "apple"]

def print_list(array, counter=1, &block)
  block ||= Proc.new { |n| "#{n}."}
  array.each do |item|
    puts "#{block.call counter} #{item.capitalize}"
    counter += 1
  end
end

print_list(array)

def make_hash(array, &block)
  block ||= Proc.new { |this_hash, item| this_hash[item] = item*2 }
  hash = Hash.new &block
  array.each { |n| hash[n] }
  hash
end

ary = [1,2,3,4,5]

puts make_hash(ary) { |this_hash, item| this_hash[item.to_s.upcase] = item-1}
