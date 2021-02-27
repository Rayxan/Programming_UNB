oneRoot :: Float -> Float -> Float -> Float
oneRoot a b c = -b/(2.0 * a)

twoRoots :: Float -> Float -> Float -> (Float, Float)
twoRoots a b c = (d-e, d+e)
    where d = -b/(2.0 * a)
          e = sqrt(b^2-4.0*a*c)/(2.0*a)

roots :: Float -> Float -> Float -> String
roots a b c
    | a == 0 = "There aren't real roots"
    | b^2 == 4.0 * a * c = show (oneRoot a b c)
    | b^2 > 4.0*a*c = show f ++ " " ++show s
    | otherwise = "no roots"
        where(f, s) = twoRoots a b c

roots2 :: Float -> Float -> Float -> String
roots2 a b c
    | a == 0 = "There aren't real roots"
    | b^2 == 4.0 * a * c = show (oneRoot a b c)
    | b^2 > 4.0*a*c = show f ++ " " ++show s
    | otherwise = "no roots"
        where f = fst(twoRoots a b c) --fst = first element
              s = snd(twoRoots a b c) --snd = second element