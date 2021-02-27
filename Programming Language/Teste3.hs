module Teste3 where
    sumList :: [Int] -> Int
    sumList [] = 0
    sumList(a:as) = a + sumList as --a is the first element, and as is the sum of the next elements