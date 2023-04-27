{-1. Realizar una función recursiva que indique la hora que marcara el reloj dentro de n cantidad de horas, partiendo de la hora indicada por el usuario (utilizar formato de 24 horas). (Int -> Int -> Int)
Ejemplo:
reloj 11 6 17
reloj 11 43 6-}

eje1 :: Int -> Int -> Int
eje1 x y = if (x + y > 24)
    then
        eje1 ((x + y) - 24) 0
    else
        x + y