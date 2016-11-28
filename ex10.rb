tabby_cat = "\tI'm tabbed in."
persian_cat = "I'm split\non a line."
backslash_cat = "I'm \\ a \\ cat."

fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

puts "---"

twitter_handle = "katmhicks"
bio = "I'm Kat and am 5'2\" in height.\nPlease follow me at twitter.com\\#{twitter_handle}."

puts """
#{bio}
\t\vOn this website, I'm going to show you
\ta selection of my work.
"""