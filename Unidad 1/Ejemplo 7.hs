{-
Ejemplo 7 - Escriba una funcion que muestre los numeros naturales menores o iguales que un numero n determinado, que no sean multiplos ni de 3 ni de 7. (Int -> String)
-}

eje7 :: Int -> String
eje7 a = if a == 0
    then
        "0"
    else
        if a `mod` 3 == 0 || a `mod` 7 == 0
        then
            eje7 (a - 1)
        else
            eje7 (a - 1) ++ " " ++ show a