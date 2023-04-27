{-2. Realizar una función que devuelva la parte decimal de un número. (Float -> Float)
Ejemplo:
decimal 1.23 0.23
decimal 269.75 0.75-}

eje2 :: Float -> Float
eje2 x = if x >= 1
    then
        eje2 (x - 1)
    else
        x

eje2v2 :: Float -> Float
