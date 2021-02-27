class Movie
    def initialize(title, year)
        @title = title
        @year = year
    end
    def title #getter method 
        @title
    end
    def title=(new_title) #setter method
        @title = new_title
    end
    def year ; @year ; end
    def year=(new_year) ; @year = new _year ; end
    # How to display movie info
    @@include_year = false
    def Movie.include_year=(new_value) #we can use Movie.methodName or self.methodName
        @@include_year = new_value
    end
    def full_title
        if @@include_year
            "#{self.title} (#{self.year})"
        else
            self.title
        end
    end
end

# Example use of the Movie class
beautiful = Movie.new('Life is Beautiful', '1997')

# What's the movie's name?
puts "I'm seeing #{beautiful.full_title}"

# And with the year
Movie.include_year = true
puts "I'm seeig #{beautiful.full_title}"

# Change the title
beautiful.title = 'La vita e bella'
puts "Ecco, ora si chiama '#{beautiful.title}!'"

# some tests
puts "\n-----------"
c = Movie
cinema = c.new('Inception',2010)
puts "#{cinema.full_title}"