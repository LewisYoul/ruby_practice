#This program will ask you for your date of birth and return you with the appropriate number of birthday spanks.

puts "What year were you born in? Format: YYYY."

year = gets.chomp

puts "Which month were you born in? Format: MM."

month = gets.chomp

puts "OK, now on which day were you born? Format: DD."

day = gets.chomp

your_age = (((((Time.new - Time.gm(year, month, day))/60)/60)/24)/365).to_i

puts "You've had #{your_age} birthdays! Here are #{your_age} birthday spanks!"
puts ""
your_age.times { puts "SPANK!" }
