# defines a method called cheese_and_crackers that takes two arguments
def cheese_and_crackers(cheese_count, boxes_of_crackers)
    # defines the first line of the method printing the first argument interpolated into a string
    puts "You have #{cheese_count} cheeses!"
    # defines the second line of the method printing the second argument interpolated into another string
    puts "You have #{boxes_of_crackers} boxes of crackers!"
    # puts a simple string
    puts "Man that's enough for a party!"
    # puts another simple string
    puts "Get a blanket.\n"
# closes the method definition
end

# puts a simple string
puts "We can just give the function numbers directly:"
# calls the method defined at the top of the script with two arguments given
cheese_and_crackers(20, 30)

# puts another simple string
puts "OR, we can use variables from our script:"
# defines a global variable
amount_of_cheese = 10
# defines another global variable
amount_of_crackers = 50

# calls the method again passing the two variables as the arguments
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# puts a simple string
puts "We can even do math inside too:"
# calls the method again passing calculations as the two arguments
cheese_and_crackers(10 + 20, 5 + 6)

# puts a simple string
puts "And we can combine the two, variables and math:"
# calls the defined method a final time with the arguments a calculation of a simple integer and the global variables
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

def split(arg1, arg2)
    return (arg1 + arg2)/2
end

puts split(10,14)
puts split(3 + 5, 3 + 6)
puts split(3,0)
puts split("3".to_i, "12".to_i)
puts split(3*2, 5*1)
puts split(15.5, 2.89)
puts split(amount_of_cheese, amount_of_crackers)
puts split(amount_of_cheese.to_f, amount_of_crackers.to_f)
puts split(10%4, 98%4)
puts split(amount_of_crackers*3, amount_of_crackers*3)