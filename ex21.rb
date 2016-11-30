def add(a, b)
    puts "ADDING #{a} + #{b}"
    a + b
end

def subtract(a, b)
    puts "SUBTRACTING #{a} - #{b}"
    a - b
end

def multiply(a, b)
    puts "MULTIPLYING #{a} * #{b}"
    a * b
end

def divide(a, b)
    puts "DIVIDING #{a} / #{b}"
    a / b
end

puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# A puzzle for the extra credit, type it in anyway.
puts "Here is a puzzle."

# AGE + (HEIGHT - ((IQ/2) * WEIGHT))
what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

# Modifying (as instructed): AGE + (HEIGHT - ((2/IQ) * WEIGHT))
what = add(age, subtract(height, multiply(weight, divide(2, iq))))

puts "That becomes: #{what}. Can you do it by hand?"

# ((IQ / AGE) / WEIGHT) * HEIGHT

variable_iq = multiply(height, divide(divide(iq, age), weight))

puts "My current IQ is: #{variable_iq}."