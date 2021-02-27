
module Exemplo1 where

    import Teste
    
    sales :: Int -> Int
    sales n = n

    totalSales :: Int -> Int

    totalSales n
        | n == 0 = sales 0
        | otherwise = totalSales (n-1) + sales n 

    maxSales :: Int -> Int
    maxSales n
        | n == 0 = sales 0
        | n > 0 = maxi (maxSales (n-1))
                        (sales n) 

    myOr :: Bool -> Bool -> Bool
    myOr True _ = True
    myOr False x = x