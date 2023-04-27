{-
Genera una lista intencional de las potencias del 2 desde la 0-ésima hasta que sea mayor a 100.
-}

lista :: [Int]
lista = [2^x | x <- [0..], 2^x <= 100]