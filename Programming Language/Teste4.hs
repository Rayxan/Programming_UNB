zip2 :: [t] -> [u] -> [(t,u)]
zip2 (a:as) (b:bs) = (a,b) : zip2 as bs
zip2 [] [] = []
zip2 (x:xs) [] = []
zip2 [] (x:xs) = []