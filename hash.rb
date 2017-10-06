#The below are hash practice questions/answers from https://launchschool.com/books/ruby/read/hashes

#Question 1

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

#Answer 1

result = family.select { |k| (k == :sisters) || (k == :brothers) }

puts ""
puts "Question 1 Answer:"
puts ""
puts "#{result}"
puts ""
puts ""

#Question 2

hash_1 = {
  a: 100,
  b: 200,
  c: 300,
  d: 400,
  e: 500
}

hash_2 = {
  a: 10,
  b: 20,
  c: 30,
  d: 40,
  e: 50
}

#Answers 2

puts "Question 2 Answers:"
puts ""
puts "(a): #{hash_1.merge(hash_2)}"
puts ""
puts "(b): #{hash_1.merge(hash_2) {|k,nv,ov| nv - ov}}"
puts ""
hash_1.merge!(hash_2) #has changed hash_1 to be identical to hash_2 (demonstrated below).
puts "(c): #{hash_1}"
puts ""
puts "(d): #{hash_2}" #hash_2 is unchanged
puts ""
puts ""

#Question 3
puts "Question 3 Answers:"
puts ""
puts "(a) The keys of the 'family' hash are:"
puts ""
family.each {|k,v| print "#{k}, "}
puts ""
puts ""
puts "(b) The values of the 'family' hash are:"
puts ""
family.each {|k,v| print "#{v}, "}
puts ""
puts ""
puts "(c)"
puts ""
family.each {|k,v| puts "The #{k} are #{v[0]}, #{v[1]} & #{v[2]}."}
puts ""
puts ""

#Question 4
#Given the following expression how would you acces the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts "Question 4 Answer:"
puts ""
puts person[:name]
puts ""
puts ""
puts "Question 5 Answer:"
puts ""
puts "Bob is present" if person.has_value?("Bob")
puts ""
puts ""

#Question 6

#Given the array

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

#Write a program that prints out groups of words that are anagrams.
#Anagrams are words that have the same exact letters in them but in a different order.

#1.Split each string into an array, sort it and then return it to a string.

#2.For each word that is now the same add it as a value in a key.

answer = Hash.new

words.each {|word|

key = word.split('').sort.join

  if answer.has_key?(key)
    answer[key].push(word)
  else
    answer[key] = [word]
  end
  }
puts answer
