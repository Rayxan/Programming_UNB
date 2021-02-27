--Comprehensive list

doubleList :: [Int] -> [Int]
doubleList xs = [2*a|a <- xs]

sumPairs :: [(Int, Int)] -> [Int]
sumPairs lp = [a+b|(a,b) <- lp]

digits :: String -> String
digits st = [ch | ch <- st, isDigit st]