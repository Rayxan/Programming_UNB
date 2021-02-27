puts "Fala tu"

name = "Raylan"

puts "Meu nome eh #{name}."

#       Arrays
array = [1,2,3,4,5,6]

puts "\n"
puts array[-2]

puts "\n"
puts array[2, 3] #grab 3 numbers, starting at position 2

puts "\n"
puts array[2..4]

puts "\n"
puts  "tamanho: " + array.length.to_s 

#       Array Methods
friends = []
friends.push("Oscar")
friends.push("Angela")
friends.push("Kevins")

puts "\n"
puts friends

puts "\n"
puts friends.reverse

puts "\n"
puts friends.sort

puts "\n"
puts friends.include? "Oscar"

puts "\n"
friends.pop
puts friends 

#       Methods | Functions
puts "\n"
def add_numbers(num1, num2=25)
    return num1 + num2
end

sum = add_numbers(5)
puts sum

# if statement
puts "\n"

is_student = true
is_smart = false

if is_student and is_smart
    puts "You are a student"
elsif is_student and !is_smart
    puts "You are not a smart student"
else
    puts "You are not a student and not smart"
end

# Switch statement
puts "\n"
my_grade = "B"

case my_grade
    when "A"
        puts "accept"
    when "B"
        puts "denied"
    else
        puts "Invalid grade"
end 

#   Dictionaries
puts "\n"

test_grades = {
    "Andy" => "B+",
    :Stanley => "C",
    "Ryan" => "A",
    3 => 95.2
}

test_grades["Andy"] = "B-"
puts test_grades["Andy"]
puts test_grades[:Stanley]
puts test_grades[3]

# While loop
puts "\n"

index = 1
while index <= 5
    puts index
    index += 1
end

# for loop
puts "\n"

for index in 0..5
    puts index
end

puts "\n"

3.times do |index|
    puts "batata"
end

puts "\n"

lucky_nums = [11,111,1111,11111,1111111]

for lucky_num in lucky_nums
    puts lucky_num
end

puts "\n"

(lucky_nums.reverse).each do |lucky_num|
    puts lucky_num
end

# Exception Catching
puts "\n"

begin
    num 10/0
rescue
    puts "Error"
end

puts "\n"

begin 
    num = 10/0
rescue ZeroDivisionError
    puts "Error (zero is deviding something)"
rescue
    puts "All other errors"
end

puts "\n"

# raise "Made Up Exception"


#               Object Oriented Programming
#Class

class Book
    attr_accessor :title, :author

    def readBook()
        puts "Reading #{self.title} by #{self.author}"
    end
end

book1 = Book.new()
book1.title = "Harry Potter"
book1.author = "JK Rowling"

book1.readBook()
puts book1.title

puts "\n"

#Constructor

class Book 
    attr_accessor :title, :author
    def initialize(title, author)
        @title = title
        @author = author
    end

    def readBook()
        puts "Reading #{self.title} by #{@author}"
    end
end

book1 = Book.new("Percy Jacksson", "Rick Riordan")

puts book1.title

book1.readBook()

puts "\n"

#Inheritance

class Chef
    def make_chicken()
        puts "The chef makes chicken"
    end

    def make_salad()
        puts "The chef makes salad"
    end

    def make_special_dish()
        puts "The chef makes a special dish"
    end
end 

class ItalianChef < Chef
    def make_pasta()
        puts "The chef makes pasta"
    end

    def make_special_dish()
        puts "The chef makes chicken parm"
    end
end

my_chef = Chef.new()
my_chef.make_special_dish()

my_italian_chef = ItalianChef.new()
my_italian_chef.make_special_dish()

puts "\n\n"


##########################################################

class Coach
    attr_accessor :name, :age
    def initialize(name, age)
        @name = name
        @age = age
    end

    def pass_the_ball()
        puts "The player passes the ball"
    end

    def shoot_the_ball()
        puts "The player shoots the ball"
    end

    def make_special_move()
        puts "The player does an especial move"
    end
end

class SecondaryCoach < Coach
    attr_accessor :country_of_origin
    def initialize(name, age, country_of_origin)
        @country_of_origin = country_of_origin
        super(name, age)
    end

    def make_the_point()
        puts "The player makes the point"
    end

    def make_special_move()
        puts "The coach analises the situation"
    end
end

my_coach = Coach.new("Phil Jacksson", 85)
my_coach.pass_the_ball()

my_secondary_coach = SecondaryCoach.new("Obina", 25, "Germany")
my_secondary_coach.pass_the_ball()
my_secondary_coach.make_special_move()
puts my_secondary_coach.age;

