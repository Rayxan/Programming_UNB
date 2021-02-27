--To compile in PowerShell use: stack ghci teste.hs
--After some changes, type: :r in PowerShell

module Teste where
    
    answer :: Int
    answer = 42

    greater :: Bool
    greater = (answer > 71)

    yes :: Bool
    yes = True

    square :: Int -> Int
    square x = x *x

    allEqual :: Int -> Int -> Int -> Bool
    allEqual n m p = (n == m) && (m == p)

    maxi :: Int -> Int -> Int
    maxi n m | n >= m = n
             | otherwise = m

    -- to show the type :t variable

    addD :: Int -> Int -> Int
    addD a b = 2 * (a+b)


