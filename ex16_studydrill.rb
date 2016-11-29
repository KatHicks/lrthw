filename = ARGV.first

puts "We're going to read you the contents of #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

puts "Opening the file..."
target = open(filename,'r')

puts "Here is the contents of your file:"
print target.read

puts "And finally, we close it."
target.close