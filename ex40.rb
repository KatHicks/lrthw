# mystuff = {'apple' => "I AM APPLES!"}
# puts mystuff['apple']

# module MyStuff
#     def MyStuff.apple()
#         puts "I AM APPLIES!"
#     end
#     
#     # this is just a variable
#     TANGERINE = "Living reflection of a dream"
# end

# require "./mystuff.rb"
# MyStuff.apple()
# puts MyStuff::TANGERINE

# mystuff['apple'] # get apple from dict
# MyStuff.apple() # get apple from the module
# MyStuff::TANGERINE # same thing, it's just a variable

# class MyStuff
#     
#     def initialize()
#         @tangerine = "And now a thousand years between"
#     end
#     
#     attr_reader :tangerine
#     
#     def apple()
#         puts "I AM CLASSY APPLES!"
#     end
#     
# end

# instatiating (or creating) a class is a bit like requiring a module
# thing = MyStuff.new() # you instantiate a class by calling the .new function
# thing.apple()
# puts thing.tangerine

# now have three ways of getting things from things

# dict style
# mystuff['apples']

# module style
# MyStuff.apples()
# puts MyStuff::TANGERINE

# class style
# thing = MyStuff.new()
# thing.apples()
# puts thing.tangerine

puts "-" * 10

class Song
    
    def initialize(lyrics, release_date)
        @lyrics = lyrics
        @release_date = release_date
    end
    
    def sing_me_a_song()
        @lyrics.each { |line| puts line }
    end
    
    def access_date()
        return @release_date
    end
    
end

happy_bday = Song.new([
    "Happy birthday to you",
    "I don't want to get sued",
    "So I'll stop right there"], 1893)
    
bulls_on_parade = Song.new([
    "They rally around tha family",
    "With pockets full of shells"], 1996)
    
american_pie = Song.new([
    "They were singing..",
    "Bye bye Miss American Pie",
    "Rode my chevvy to the levvy",
    "But the levvy was dry"], 1971)
    
happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

american_pie.sing_me_a_song()

lyrics = [
    "Don't it always seem to go", 
    "That you don't know what you've got 'til it's gone", 
    "They paved paradise", 
    "And put up a parking lot"]

publication_date = 1970
    
big_yellow_taxi= Song.new(lyrics, publication_date)

big_yellow_taxi.sing_me_a_song()

dates = []

dates << big_yellow_taxi.access_date << american_pie.access_date << happy_bday.access_date << bulls_on_parade.access_date

puts dates.sort