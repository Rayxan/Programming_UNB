def count_words(phrase)
    phrase = phrase.downcase.gsub(/\W/,' ').split
    hash = Hash[]
    phrase.each do |myphrase|
        if(hash[myphrase] == nil)
            hash.store(myphrase, 1) #single case
        else
            hash[myphrase] = hash[myphrase]+1 #increment
        end
    end  

    puts hash

end

puts "\n Example tests"
count_words("A man, a plan, a canal -- Panama") # => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
count_words "Doo bee doo bee doo" # => {'doo' => 3, 'bee' => 2}
puts "\n"

phrase = gets.chomp
puts count_words(phrase)