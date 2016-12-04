counties = {
    "England" => ["Cambridgeshire", "Devon", "Dorset", "Kent", "Yorkshire"],
    "Wales" => ["Anglesey", "Monmouthshire", "Wrexham"],
    "Scotland" => ["Orkney", "Aberdeenshire", "Lanarkshire"]
}

cities = {
    "Cambridgeshire" => "Cambridge",
    "Devon" => "Exeter",
    "Dorset" => "Bournemouth",
    "Kent" => "Canterbury",
    "Yorkshire" => "York",
    "Aberdeenshire" => "Aberdeen",
    "Monmouthshire" => "Monmouth"
}

puts cities["Cambridgeshire"]
puts
puts counties["England"]
puts
puts counties["England"][0]
puts
puts cities[counties["England"][0]]
puts
puts cities[counties["Wales"][1]]
puts
cities[counties["Wales"][0]] ||= "NOT FOUND"
puts cities[counties["Wales"][0]]

cities["Anglesey"] = "Holyhead"
puts cities[counties["Wales"][0]]
puts cities[counties["Wales"][2]]

cities.default = "MISSING"
counties.default = "MISSING"

puts cities[counties["Wales"][2]]
puts cities[counties["Scotland"][2]]
puts cities[counties["Scotland"][0]]

puts cities
puts cities.invert
puts cities.length
puts counties.length
puts counties[0].length
puts
puts cities.sort
puts
puts counties.sort

# when you sort a hash - it puts both the keys and values sorted by keys!