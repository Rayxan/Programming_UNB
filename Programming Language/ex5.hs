module Ex5 where
    import Teste3

    -- •dobrar os elementos de uma lista
    double :: [Int] -> [Int]
    double [] = []
    double (y:ys) = (2*y) : (double ys)

    -- • pertencer: checar se um elemento está na lista
    member :: [Int] -> Int -> Bool
    member [] _ = False
    member (x:xs) elem | x == elem = True
                       | otherwise = member xs elem

    member2 :: [Int] -> Int -> Bool
    member2 xs n = n `elem` xs
    
    -- • soma de uma lista de pares
    sumPairs :: [(Int, Int)] -> [Int]
    sumPairs [] = []
    sumPairs (x:xs) = (fst x + snd x) : (sumPairs xs)

    -- More acceptable form to do the above function
    sumPairs2 :: [(Int, Int)] -> [Int]
    sumPairs2 [] = []
    sumPairs2 ((x,y):bs) = (x+y) : (sumPairs2 bs)

    -- • filtragem: apenas os números de uma string
    digits :: String -> String
    digits "" = ""
    digits (w:ws) =  if (w>0) then (w : (digits ws))    