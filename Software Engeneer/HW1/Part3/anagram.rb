def combine_anagrams(words)
    words_hash = words.each_with_object(Hash.new []) do |word, hash|
        hash[word.chars.sort] += [word]
    end
    
    words_hash.each do |word, matching_words|
        puts matching_words.join ', ' if matching_words.length >= 0
    end
end

words = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams',
'scream']

combine_anagrams(words)
# => output: [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]]