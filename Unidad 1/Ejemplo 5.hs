{-Ejemplo 5
Realizar una funcion recursiva que cuente cuantos digitos tiene un numero entero. (Int -> Int)
-}

ej5v1 :: Int -> Int
ej5v1 a = if (a >= 10)
    then
        1 + ej5v1 (div a 10)
    else
        1