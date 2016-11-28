first, second, third, fourth, fifth = ARGV

puts "First, you need to find some #{first}."
puts "Then, you need to buy #{second}, #{third}, #{fourth} from the shop."
puts "Finally, combine them with #{fifth}."

puts "So, just to recap, what did you start with?"
recap = $stdin.gets.chomp
puts "Correct, you start with #{recap}"