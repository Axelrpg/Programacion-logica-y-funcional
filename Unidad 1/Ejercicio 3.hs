{-
3. Escriba una función en haskell que pregunte al usuario un puntaje, y muestre como resultado la cantidad de combinaciones de dados con las que se puede obtener ese puntaje.
Un puntaje dado puede ser obtenido con varias combinaciones posibles. Por ejemplo, el puntaje 4 se logra con las siguientes tres combinaciones: 1+3, 2+2 y 3+1. (Int -> Int)
-}

eje3 :: Int -> Int
eje3 n = if n <= 12
    then
        length (filter (== n) (map sum (combinacionesDados)))
    else
        0

combinacionesDados :: [[Int]]
combinacionesDados = [[a,b] | a <- [1..6], b <- [1..6]]