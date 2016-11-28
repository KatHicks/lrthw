print "Give me a number: "
number = gets.chomp.to_f

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_f

smaller = number / 100
puts "A smaller number is #{smaller}."

puts "---"

puts "How much money are you giving me?"
puts "Write your answer in pounds please."
amount = gets.chomp.to_f

change = amount * 0.1

puts "Many thanks! \nHere is £#{change} in change."