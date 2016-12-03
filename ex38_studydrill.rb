# 10 list examples:
    # 01. students
    # 02. customers
    # 03. products
    # 04. times
    # 05. colours
    # 06. cities
    # 07. identification numbers
    # 08. patients
    # 09. prisoners
    # 10. shipping containers

students = ["Kat", "Danny", "Alex", "Ruby", "Laurie", "Liv", "Katie", "Mikaela", "Ben"]

def pick_three(list)
    one = list[rand(list.length)]
    list.delete_at(list.index(one))
    
    two = list[rand(list.length)]
    list.delete_at(list.index(two))
    
    three = list[rand(list.length)]
    list.delete_at(list.index(three))
    
    selection = [one, two, three]
    
    list.push(one, two, three)
    
    puts "We have selected #{selection.join(", ")} from the following list:\n#{list.join(", ")}"
end

pick_three(students)

products = ["bananas", "onions", "rice", "tea bags", "bread", "spaghetti", "milk", "yoghurt"]

def assign_value(list)
    prices = []
    list.each do |i|
        puts "How much would you pay for #{i} (in pounds)?"
        value = $stdin.gets.chomp
        prices.push(value)
    end
    
    puts "Our products cost between #{prices.sort.first} and #{prices.sort.last} in pounds."
end

assign_value(products)