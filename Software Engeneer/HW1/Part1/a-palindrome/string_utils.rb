class StringUtils
    def remove_non_word_chars_and_spaces(word)
        word.downcase.gsub(/[^\w]+/, '')
    end

    #I don't understand why this doesn't work
    # def remove_non_word_chars(word)
    #     word.downcase.gsub(/[^\w\s]+/, '')
    # end
end