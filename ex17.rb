from_file, to_file = ARGV

puts """Copying from #{from_file} to #{to_file}.
Ready, hit RETURN to continue, CTRL-C to abort.
"""
$stdin.gets

from = open(from_file)
to = open(to_file, 'w')
to.write(from.read)

puts "Alright, all done."

from.close
to.close