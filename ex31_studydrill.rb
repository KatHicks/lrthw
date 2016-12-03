puts "You're about to go on an advanture..."
puts "Have you ever seen sliding doors? It's going to be a bit like that... be prepared!"
puts "Someone comes up to you in the street and asks whether you've got a minute?"
puts "Type #1 if you say \"Yes, sure\" and type #2 if you say \"No. Sorry, I'm in a rush!\"."

answer_one = $stdin.gets.chomp

if answer_one == "1"
    puts "The man announces that he's just won two tickets to go to Vietnam."
    puts "He then asks whether you'd like to join, as no one else he knows is available."
    puts "Type #1 if you say \"Yes, sure\" and type #2 if you say \"Thanks! But no, thanks.\"."
    
    holiday = $stdin.gets.chomp
    
    if holiday == "1"
        puts "Go pack your bags!!"
    elsif holiday == "2"
        puts "Are you sure about that?"
    else
        puts "Think you might be thinking outside the box a bit too much. Answer the questions correctly!"
    end

elsif answer_one == "2"
    puts "Are you doubting that now?"
    puts "You walk to the station and catch your train just like any other day..."
else
    puts "Did you just ignore them? How rude!"
end