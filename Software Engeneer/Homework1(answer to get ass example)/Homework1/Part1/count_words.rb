def count_words(string)
    string = string.downcase.gsub(/[^[:word:]\s]/, '')
    array = string.split()
    h = Hash[]
    array.each do |words|
        if h[words] == nil
            h.store(words, 1)
        else
            h[words] = h[words]+1
        end
    end 
    return h 
end

string = gets.chomp

puts(count_words(string))
