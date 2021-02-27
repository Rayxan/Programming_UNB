class String
    def palindrome?
        word = self
        word = word.downcase().gsub(/\w+/i, '')
        word.reverse == word
    end
end

puts "cars".palindrome?