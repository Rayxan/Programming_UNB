
addPair :: (Int, Int) -> Int
addPair(x,y) = x+y
----------------------------------------------------------------
-- Tuple
addPair2 :: (String, Int) -> String
addPair2(word, num) = word ++ show num --prefix show is a reserved word

shift :: ((Int, Int), Int) -> (Int, (Int, Int))
shift((x,y), z) = (x, (y,z))
----------------------------------------------------------------

--Synonyms
type Name = String

retName :: Name -> Name
retName(word) = word

type Age = Int

retAge :: Age -> Age
retAge(x) = x

type Phone = Int 

retPhone :: Phone -> Phone 
retPhone(y) = y

type Person = (Name, Age, Phone)

triple :: Person -> Name
triple(n,a,p) = n ++ ", " ++ show a ++ ", " ++ show p 

triple2 :: Person -> Name
triple2(n,_,_) = n  
----------------------------------------------------------------
--Local definitions(where and let)
--let definitions in expressions
--definitions where definitions

sumSquares :: Int -> Int -> Int
sumSquares x y = sqX + sqY
    where sqX = x * x
          sqY = y * y 

--the above example simplified 

sumSquares2 :: Int -> Int -> Int
sumSquares2 x y = sq x + sq y 
    where sq z = z * z         

sumSquares3 :: Int -> Int -> Int
sumSquares3 x y = let sqX = x * x
                      sqY = y * y
                        in sqX + sqY 

sumSquares4 :: Int -> Int -> Int
sumSquares4 o p = let sq z = z * z
                    in sq o + sq p
-----------------------------------------------------------
