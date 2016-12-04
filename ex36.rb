def start
    cards = []
    for i in 1 ... 100
        cards.push(i)
    end
    
    puts "Our choices in life are half chance and so are everybody else's."
    puts "We've got a set of 99 cards (from 1 to 99)."
    puts "And which three cards you pick will determine your first steps in the game.\n"
    
    rand_a = cards[rand(0 ... 99)]
    cards.slice!(cards.rindex(rand_a))
    
    rand_b = cards[rand(0 ... 98)]
    cards.slice!(cards.rindex(rand_b))
    
    rand_c = cards[rand(0 ... 97)]
    cards.slice!(cards.rindex(rand_c))
    
    puts "Your three selected cards are #{rand_a}, #{rand_b} and #{rand_c}."
    
    if rand_a + rand_b + rand_c < 100
        puts "-" * 10
        left
    else
        puts "-" * 10
        right
    end
end

def left
    leaders = Hash.new
    leaders["Aung San Suu Kyi"] = "ALIVE"
    leaders["Winston Churchill"] = "DEAD"
    leaders["Mahatma Ghandi"] = "DEAD"
    leaders["Nelson Mandela"] = "DEAD"
    
    puts "Your cards added up to less than 100 and have brought you through the left door."
    puts "You find yourself in a classroom."
    puts "And the teacher presents you with this list of world leaders:"
    
    x = 1
    leaders.each do |k, v|
        if x == 4
            print "and #{k}."
        elsif x == 3
            x += 1
            print "#{k} "
        else
            x += 1
            print "#{k}, "
        end
    end
    
    puts "Your asked to recall which great leader is still alive today."
    puts "What is your answer?"
    puts ">>"
    answer = $stdin.gets.chomp
    
    if leaders[answer] == "ALIVE"
        puts "-" * 10
        puts "You're correct! #{answer} is still alive."
        puts "You're led out of the class by an assistant to a grand hall."
        puts "YOU WIN!!!"
    else
        puts "Nope. Try again."
        puts ">>"
        answer = $stdin.gets.chomp
        if leaders[answer] == "ALIVE"
            puts "-" * 10
            puts "Grand hall"
        else
            puts "Incorrect. You're out of the game!"
            exit(0)
        end
    end
end

def right
    puts "Your cards added up to more than 100 and have brought you through the right door."
    puts "You're now met with a 10\' wall that you need to get past."
    puts "What do you do?"
    puts "Enter #1 if you give up, #2 if you try to climb it or #3 if you search for a loose brick."
    puts ">>"
    choice = $stdin.gets.chomp
    
    if choice == "1"
        puts "Giving up!! Pathetic!"
        puts "You're out of the game!"
        exit(0)
    elsif choice == "2"
        puts "Trying to climb it is impossible."
        puts "You're now suffering from exhaustion."
        puts "You're out of the game!"
        exit(0)
    elsif choice == "3"
        puts "Smart! Yes, you've used your smarts and there is indeed a loose brick."
        puts "You manage to dislodge it and squeeze through."
        puts "-" * 10
        age
    else
        puts "You've not entered a valid answer."
        puts "You've got one last attempt and then that's it."
        puts ">>"
        choice = $stdin.gets.chomp
        
        if choice == "1"
            puts "Giving up!! Pathetic!"
            puts "You're out of the game!"
            exit(0)
        elsif choice == "2"
            puts "Trying to climb it tired your out."
            puts "You're now suffering from exhaustion."
            puts "You're out of the game!"
            exit(0)
        elsif choice == "3"
            puts "Smart! Yes, you've used your smarts and there is indeed a loose brick."
            puts "You manage to dislodge it and squeeze through."
            puts "age"
        else
            puts "You've not entered a valid answer."
            puts "And you've had a second chance!"
            puts "You're out of the game!"
            exit(0)
        end
        
    end
end

def age
    puts "You now enter a new room and are met with an eccentric man."
    puts "He says that he'll let you through but only if you guess his age correctly..."
    puts "How old do you think he is?"
    puts ">>"
    guess = $stdin.gets.chomp
    
    if guess.to_i < 40 && guess.to_i > 0 # string.to_i returns 0 but 0 is still less than 40
        puts "You know the art of flattery."
        puts "He lets you pass and you've made it out the other side."
        puts "YOU WIN!!!"
    elsif guess.to_i >= 40
        puts "Ooo, think he's a bit offended by that answer."
        puts "You're out of the game!"
        exit(0)
    else
        puts "Your answer isn't valid. Try typing a number!"
        puts ">>"
        guess = $stdin.gets.chomp
        
        if guess.to_i < 40
            puts "You know the art of flattery."
            puts "He lets you pass and you've made it out the other side."
            puts "YOU WIN!!!"
        elsif guess.to_i >= 40
            puts "Ooo, think he's a bit offended by that answer."
            puts "You're out of the game!"
            exit(0)
        else
            puts "Your answer isn't valid."
            puts "And you've had a second chance."
            puts "You're out of the game!"
            exit(0)
        end
    end
end

start