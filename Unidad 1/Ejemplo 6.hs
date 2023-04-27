{- 
Ejemplo 6 - Escriba una funcion recursiva que determine si el numero entero ingresado por el usuario es par o no. (Int -> String)
-}

eje6 :: Int -> String
eje6 a = if a == 0
    then
        "Es par"
    else
        if a == 1
        then
            "Es impar"
        else
            eje6 (a - 2)