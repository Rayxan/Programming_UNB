def palindrome?(string)
    string = string.downcase.gsub(/\W/, '') #remove all non word characters
    # puts "new string= " + string
    puts string == string.reverse ? true : false
end

palindrome?("A man, a plan, a canal -- Panama") #=> true
palindrome?("Madam, I'm Adam!") # => true
palindrome?("Abracadabra") # => false (nil is also ok)
puts "\n---------------------------"
##########################################################

#Or using the 'scan' method

def palindrome2?(string)
    string = string.downcase.scan(/\w/) #pass only the words in the string
    puts string == string.reverse ? true : false
end

palindrome2?("A man, a plan, a canal -- Panama") #=> true
palindrome2?("Madam, I'm Adam!") # => true
palindrome2?("Abracadabra \n") # => false (nil is also ok)
