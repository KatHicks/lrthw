# assigning a variable
types_of_people = 10
# assigning another variable with the previous variable interpolated into it
# INTERPOLATION 1
x = "There are #{types_of_people} types of people."
# assigning a simple string variable
binary = "binary"
# assigning another simple string variable
do_not = "don't"
# assigning another longer string variable with the previous two variables interpolated into it
# INTERPOLATION 2
y = "Those who know #{binary} and those who #{do_not}."

# printing variable x
puts x
# printing variable y
puts y

# printing a string with variable x interpolated
# INTERPOLATION 3
puts "I said: #{x}."
# printing a string with variable y interpolated
# INTERPOLATION 4
puts "I also said: '#{y}'."

# assigning a boolean variable
hilarious = false
# assigned a string variable which contains the interpolation of the previous variable
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

# printing the previous variable
puts joke_evaluation

# assigning a simple string variable
w = "This is the left side of..."
# assigning another simple string variable
e = "a string with a right side."

# printing the concatenation of the previous two variables
puts w + e