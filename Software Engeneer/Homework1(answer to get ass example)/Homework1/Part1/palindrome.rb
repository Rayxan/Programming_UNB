puts "Digite uma frase ou palavra para descobrir se ela eh um palindromo"
palindromo = gets.chomp

def palindrome? (string)
    string.gsub!(/\W+/, '')
    string = string.downcase()

    return string.reverse() == string
end
    
puts(palindrome?(palindromo))
