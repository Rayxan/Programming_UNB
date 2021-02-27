# (b) Create a class JellyBean that extends Dessert, and add a getter and setter for flavor. Modify
# delicious? to return false if the flavor is black licorice (but delicious? should still return true for all
# other flavors and for all non-JellyBean desserts).

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

    def healthy?()
        @calories < 200 ? (puts true) : (puts false)
    end
    
    def delicious?() puts true ; end

end

class JellyBean < Dessert
    def initialize(name, calories, flavor)
        @flavor = flavor
        super(name, calories)
    end
    def delicious?()
        @flavor == "black licorice" ? (puts false) :  (puts true) 
    end
end

my_dessert = JellyBean.new("Raylan", 10, "black licorice")

my_dessert.healthy?()
my_dessert.delicious?()
