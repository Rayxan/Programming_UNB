require_relative './string_utils'

class PalindromeChecker
    def is_palindrome(word)
        word = StringUtils.new.remove_non_word_chars_and_spaces(word)

        # if is_single_letter_or_less(word)
        #     return true
        # end

        return puts word == word.reverse

    end

    private

    # def is_single_letter_or_less(word)
    #     word.length <= 1
    # end

end

myWord = PalindromeChecker.new

myWord.is_palindrome("A man, a plan, a canal -- Panama")
myWord.is_palindrome("Madam, I'm Adam!") # => true
myWord.is_palindrome("Abracadabra") # => false (nil is also ok)

myWord.is_palindrome("a")