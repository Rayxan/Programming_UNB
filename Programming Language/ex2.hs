sales :: Int -> Int
sales n = n

quantSemanas :: Int -> Int -> Int

quantSemanas s 0 | sales 0 == s = 1
                 | otherwise = 0
quantSemanas s n | n > 0 && sales (n) == s = 1 + quantSemanas s (n-1)
                 | n > 0 = quantSemanas s (n-1)