# integer variable denoting the number of cars
cars = 100
# integer variable denoting the number of passenger spaces in a car
space_in_a_car = 4
# integer variable denoting the number of available drivers
drivers = 30
# integer variable denoting the number of passengers that need to use carpool service
passengers = 90
# integer variable denoting the number of cars that won't be driven today
cars_not_driven = cars - drivers
# integer variable denoting the number of cars that will be driven today
cars_driven = drivers
# integer variable denoting the number of passengers that this level of service can transport
carpool_capacity = cars_driven * space_in_a_car
# integer variable denoting the number of passengers that will need to be ineach car for them all to be transported
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."