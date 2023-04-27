{-
Ejemplo 8 - Escriba una funcion que determine si un numero es primo usando list comprehension. (Int -> Bool)
-}

eje8 :: Int -> Bool
eje8 n = [x | x <- [1..n], mod n x == 0] == [1,n]