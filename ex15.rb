# converts the single argument into a variable
filename = ARGV.first

# converts the filname variable into a File object assigned to txt
txt = open(filename)

# prints out a sentence with the filename interpolated into it
puts "Here's your file #{filename}:"
# reads the contents of the txt File object and prints it
print txt.read

# prints a prompt to the user to input the filename again
print "Type the filename again: "
# converts the user inputted filename to a new variable called 'file_again'
file_again = $stdin.gets.chomp

# converts the user inputted filename into a File object and assigns it to a variable
txt_again = open(file_again)

# reads this new File object and prints it
print txt_again.read

# closes the two File object - important to close files when you're done with them.
txt.close
txt_again.close