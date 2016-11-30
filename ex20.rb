# assigns the single argument variable to the global variable input_file
input_file = ARGV.first

# defines a method called print_all that takes one argument
def print_all(f)
    # writes block for method that prints the contents of the input file
    puts f.read
# closes the method definition
end

# defines another method called rewind that takes one argument
def rewind(f)
    # writes block for method that goes to the beginning of the input file - position 0 in the stream
    f.seek(0)
# closes the method definition
end

# defines another method called print_a_line that takes two arguments
def print_a_line(line_count, f)
    # prints a string with the line_count parameter interpolated and then the next line of the input file using gets
    puts "#{line_count}, #{f.gets.chomp}"
# closes the method definition
end

# converts the input_file variable to a File object called current_file
current_file = open(input_file)

# prints a simple string informing the user of next actions
puts "First let's print the while file:\n"

# calls print_all method on current_file File object
print_all(current_file)

# prints another simple string informing the user of next actions
puts "Now let's rewind, kind of like a tape."

# calls rewind method on current_file File object
rewind(current_file)

# prints another simple string
puts "Let's print three lines:"

# assigns a new variable called current_line to the value of 1
current_line = 1 # current line = 1
# calls the print_a_line method using two global variables
print_a_line(current_line, current_file)

# re-assigns the current line variable to a +1 increment in value
current_line += 1 # current line = 2
# calls the print_a_line method again using same two global variables
print_a_line(current_line, current_file)

# re-assigns the current line variable again by another +1 increment
current_line += 1 # current line = 3
# calls the print_a_line method for a final time
print_a_line(current_line, current_file)