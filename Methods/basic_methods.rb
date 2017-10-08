def smash(words)
  words.join(' ')
end

puts smash ["I", "like", "cats"]

puts [1,2,3,4].inject(:*)



def bonus_time(salary, bonus)
  if bonus
    "£#{10*salary}"
    else
    "£#{salary}"
  end
end

puts bonus_time 10, false
