# Next three lines assign three integer variables
people = 100
cars = 60
trucks = 45

# First evaluation of the if statement stating if the number of cars is greater than the number of people do the following block
if cars > people
    # Block for preceding statement
    puts "We should take the cars."
# Second evaluation of the if statement (elsif) stating if the number of cars is instead less than the number of people do the following block
elsif cars < people
    # Block for the preceding elsif statement
    puts "We should not take the cars."
# Third statement if neither of the above apply
else
    # Block for all other evaluations
    puts "We can't decide."
# Ending the if statement
end

# First evaluation of the if statement stating if the number of trucks is greater than the number of cars do the following block
if trucks > cars
    # Block for preceding statement
    puts "That's too many trucks."
# Second evaluation of the if statement (elsif) stating if the number of trucks is instead less than the number of cars do the following block
elsif trucks < cars
    # Block for the preceding elsif statement
    puts "Maybe we could take the trucks."
# Third statement if neither of the above apply
else
    # Block for all other evaluations
    puts "We still can't decide."
# Ending the if statement
end

# First evaluation of the if statement stating if the number of people is greater than the number of trucks do the following block
if people > trucks
    # Block for preceding statement
    puts "Alright, let's just take the trucks."
# Else statement if first statement evaluated as false
else
    # Block for all other evaluations
    puts "Fine, let's stay home then."
# Ending the if statement
end

# First evaluation of the if statement asking if the number of people is greater than the number of tracks AND the number of trucks is the same as the number of cars
if people > trucks && trucks == cars
    # Block for preceding statement
    puts "Why don't we take some trucks AND some cars?"
# Second evaluation if instead there are more trucks than cars
elsif people > trucks && trucks > cars
    # Block for preceding statemnt
    puts "Just take trucks only."
# Else statement if neither of the other two statements evaluated as true
else
    # Block for all other evaluations
    puts "Just take cars only."
# Ending the if statement
end