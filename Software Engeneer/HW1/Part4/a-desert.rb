# (a) Create a class Dessert with getters and setters for name and
# calories. Define instance methods healthy?, which returns true if 
# a dessert has less than 200 calories, and delicious?, which returns 
# true for all desserts.

class Dessert
    attr_accessor :name, :calories

    def initialize(name, calories)
        @name = name
        @calories = calories
    end

    def healthy?
        @calories < 200 ? (puts true) : (puts false)
    end
    
    def delicious?() puts true ; end

end

my_dessert = Dessert.new("Raylan", 300)

my_dessert.healthy?
my_dessert.delicious?
