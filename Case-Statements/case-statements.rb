
def timmys_grade
  puts "What grade did you get at school Timmy?"
  answer = gets.chomp
  case answer
  when "A"
    puts "Well done!!! You're my favourite child!"
  when "B"
    puts "That's some good work Timmy!"
  when "C"
    puts "Timmy! I think you can do better than that!"
  else
    puts "Timmy, you're the worst."
  end
end

timmys_grade
