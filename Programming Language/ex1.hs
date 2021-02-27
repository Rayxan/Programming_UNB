-- Defina as seguintes funções:
-- – fatorialfat :: Int -> Int
-- – compara se quatro números são iguais
-- all4Equal :: Int -> Int -> Int -> Int -> Bool
-- – all4Equal usando allEqual
-- – retorna quantos parâmetros são iguais
-- howManyEqual :: Int -> Int -> Int -> Int

import Teste

--FACTORIAL--
fact :: Int -> Int
fact n = if n == 0 then 1
         else n* fact (n-1)

fact2 :: Int -> Int
fact2 0 = 1
fact2 n = n * fact2 (n-1)

fact3 :: Int -> Int
fact3 n | n == 0 = 1
        | n > 0 = n * fact3 (n-1)

fact4 :: Int -> Int
fact4 n = product [1..n]

--all4Equal usando allEqual--
all4Equal :: Int -> Int -> Int -> Int -> Bool

all4Equal n o p q = allEqual n o p && q==p

--howManyEqual
howManyEqual :: Int -> Int -> Int -> Int
howManyEqual a b c | a==b && b==c = 3
                   | a==b || b==c || a==c = 2
                   | otherwise = 0