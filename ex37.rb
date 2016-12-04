class Student
    @@num_enrolled = 0
    
    def initialize(first_name, fam_name, age, grade)
        @@num_enrolled += 1
        @first_name = first_name
        @fam_name = fam_name
        @age = age
        @grade = grade
    end
    
    def self.total_enrolled
        @@num_enrolled
    end
    
    def full_name()
        return @first_name + " " + @fam_name
    end
    
    def grade()
        return @grade
    end
    
    def grade_card()
        print "Hi #{@first_name}! Your grade is #{@grade}. "
        yield
    end
    
    alias result grade
    
end

ID918 = Student.new("Kat", "Hicks", 24, 8.6)

ID790 = Student.new("Ruby", "Shrimpton", 23, 7.9)

ID857 = Student.new("Sam", "Sherman", 23, 9.2)

register = [ID790.full_name, ID857.full_name, ID918.full_name]

puts "Here is our register for today:\n\t#{register.sort.join(', ')}"

ID790.grade_card { puts "Well done!" }
ID857.grade_card { puts "Impressive!" }

puts "\vWe currently have #{Student.total_enrolled} students enrolled on the course."

if Student.total_enrolled > 30 then puts "We are oversubscribed for this course. \nWould anyone consider switching?"
elsif Student.total_enrolled == 30 then puts "We are now full and cannot accept any further students."
else puts "If you'd like to subscribe, please get in touch."
end

puts "The average grade of the class is currently #{(ID790.result + ID857.result + ID918.result)/3}."

schools = {
    "secondary" => ["Newstead Wood", "Bromley High", "St Olaves", "Chislehurst and Sidcup"],
    "primary" => ["Brindishe", "Lee Manor", "St Winfreds"]
}

schools.each do |k, v|
    puts "We have #{v.length} #{k} schools in the area."
end

for i in schools["secondary"]
    i.upcase!
end

for i in schools["primary"]
    i.upcase!
end

puts "MASTER SCHOOL LIST:\n#{schools["primary"].join(', ')}, #{schools["secondary"].join(', ')}"

print "Enter your grade: A, B or C..."
grade = gets.chomp
case grade
when "A"
  puts 'Well done!'
when "B"
  puts 'Try harder!'
when "C"
  puts 'You need help!!!'
else
  puts "You just making it up!"
end

national_funding = 13567938569

primary_funding = 0
secondary_funding = 0

while national_funding > 0
    national_funding -= 10000*7
    primary_funding += 10000*3
    secondary_funding += 10000*4
end

puts "The budget for October shows that our national primary school budget is £#{primary_funding} and our national secondary school budget is £#{secondary_funding}."

puts "But in the future, we are going to give each school the same budget."

puts "So... we will have a budget remainder of £#{national_funding % 7} which can be used for healthcare instead!"