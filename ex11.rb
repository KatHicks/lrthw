print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weight? "
weight = gets.chomp

puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

puts "---"

puts "What is your favorite number?"
number = gets.chomp
number = number.to_i + 1
puts "I suggest " + number.to_s + " as a bigger and better number"

puts "---"

print "Where were you born? "
birth_place = gets.chomp
print "And where do you live now? "
home = gets.chomp

if birth_place == home
    puts "Haven't gone far!"
else
    puts "Hope you still go back once in a while!"
end