data Color = Rojo | Verde | Amarillo | Azul | Negro | Blanco deriving (Eq, Show)

fc1 :: Color -> String
fc1 x
    | x == Rojo = "Manzana roja"
    | x == Verde = "Limon"
    | x == Amarillo = "Platano"
    | x == Azul = "Mora azul"
    | x == Negro = "Zapote"
    | x == Blanco = "Coliflor"

fc2 :: String -> (Color, Color)
fc2 x
    | x == "Naranja" = (Rojo, Amarillo)
    | x == "Verde" = (Amarillo, Azul)
    | x == "Morado" = (Rojo, Azul)
    | x == "Rosa" = (Rojo, Blanco)
    | x == "Gris" = (Blanco, Negro)
    | x == "Cafe" = (Rojo, Verde)
    | otherwise = error "No tenemos ese color"

data Carro = Carro {marca :: String, modelo :: String, precio :: Float} deriving (Show)

c1 = Carro {marca = "Toyota", modelo = "Corolla", precio = 200000.0}
c2 = Carro {marca = "Nissan", modelo = "Sentra", precio = 150000.0}
c3 = Carro {marca = "Honda", modelo = "Civic", precio = 180000.0}
c4 = Carro {marca = "Mazda", modelo = "3", precio = 170000.0}
c5 = Carro {marca = "Mazda", modelo = "6", precio = 220000.0}

desCarro :: Carro -> String
desCarro (Carro {marca = m, modelo = mo, precio = p}) = "Marca: " ++ m ++ ", modelo: " ++ mo ++ ", precio: " ++ show p

{-
Realiza una funcion que te muestre la informacion de todos los carros
-}

carros :: [Carro]
carros = [c1, c2, c3, c4, c5]

carros2 :: [String]
carros2 = [desCarro(c1), desCarro(c2), desCarro(c3), desCarro(c4), desCarro(c5)]

listaCarros :: [Carro] -> String
listaCarros [] = ""
listaCarros (Carro {marca = m, modelo = mo, precio = p} : cs) = "Marca: " ++ m ++ ", modelo: " ++ mo ++ ", precio: " ++ show p ++ ".\n" ++ listaCarros cs

mostrar = do
    putStrLn "Lista de carros:"
    putStrLn (listaCarros [c1, c2, c3, c4, c5])