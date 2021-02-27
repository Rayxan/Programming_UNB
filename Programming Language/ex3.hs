{-
• Defina a função makeSpaces :: Int -> String
que produz um string com uma quantidade n de
espaços
• Defina pushRight :: Int -> String -> String,
utilizando a definição de makeSpaces, para
adicionar uma quantidade n de espaços a um
dado string.
-}

makeSpaces :: Int -> String

makeSpaces 0 = ""
makeSpaces n
         | n > 0 = " " ++ makeSpaces (n-1)

pushRight :: Int -> String -> String

pushRight n word
        | n == 0 && (word == "") = ""
        | n == 0 && (word /= "") = word
        | n > 0 && (word /= "") = makeSpaces (n) ++ word 

-- more efficient way to pushRight
pushRight2 :: Int -> String -> String

pushRight2 n s = makeSpaces n ++ s