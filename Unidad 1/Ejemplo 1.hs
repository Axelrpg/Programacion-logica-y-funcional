{-Ejemplo 1
Realizar una funcion que devuelva el maximo de dos argumentos de tipo entero, salida de tipo entero.
-}

ej1v1 :: Int -> Int -> Int
ej1v1 a b = max a b

ej1v2 :: Int -> Int -> Int
ej1v2 a b = if (a > b) then a else b

ej1v3 :: Int -> Int -> Int
ej1v3 a b
    | a > b = a
    | b > a = b
    | otherwise = error "Son iguales"