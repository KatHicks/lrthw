# while loop

i = 0
max = 6

def increment_while(start, finish, increment)
    numbers = []
    puts "Creating a list from #{start} up to #{finish} incrementing by #{increment}."
    
    while start < finish
        numbers.push(start)
        start += increment
    end
    
    puts "New list is: ", numbers
    return numbers
end

increment_while(i, max, 1)

# remember you can write this 2 other ways...

# each method - need to use step if want varied increment
def increment_each(start, finish, increment)
    numbers = []
    puts "Creating a list from #{start} up to #{finish} incrementing by #{increment}."
    
    (start..finish).step(increment) do |i|
        numbers.push(i)
    end
    
    puts "New list is: ", numbers
    return numbers
end

increment_each(0, 15, 3)

# for loop
def increment_for(start, finish, increment)
    numbers = []
    puts "Creating a list from #{start} up to #{finish} incrementing by #{increment}."
    
    for i in (start..finish).step(increment)
        numbers.push(i)
    end
    
    puts "New list is: ", numbers
    return numbers
end

increment_for(4, 20, 2)