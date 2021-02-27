class String
    def palindrome?
        string = self
        string = string.downcase().gsub!(/\W+/i, '')
        return string.reverse() == string
    end
end

puts "Sator Arepo, tenet OpEra Rotas".palindrome?
    
