module Enumerable
    def palindrome?
        a = to_a
        a == a.reverse
    end
end


puts [1,2,3,2,1].palindrome?
    
