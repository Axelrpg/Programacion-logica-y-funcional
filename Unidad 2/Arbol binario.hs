import Data.Maybe

data Arbol a = Vacio | Nodo (Arbol a) a (Arbol a) deriving Show

-- Nodo (Nodo (Nodo Vacio 24 Vacio) 15 (Nodo Vacio 27 Vacio)) 10 (Nodo Vacio 18 (Nodo Vacio 24 Vacio))

ab1 :: Arbol Int
ab1 = Nodo aI 10 aD
    where
        aI = Nodo aII 15 aID
        aD = Nodo aDI 18 aDD
        aII = hoja 24
        aID = hoja 27
        aDI = hoja 23
        aDD = hoja 25

hoja :: a -> Arbol a
hoja x = Nodo Vacio x Vacio

raiz :: Arbol a -> a
raiz Vacio = error "No hay raiz en un arbol vacio"
raiz (Nodo _ r _) = r

tamaño :: Arbol a -> Int
tamaño Vacio = 0
tamaño (Nodo i _ d) = 1 + tamaño i + tamaño d

altura :: Arbol a -> Int
altura Vacio = 0
altura (Nodo i _ d) = 1 + max (altura i) (altura d)

inOrden :: Arbol a -> [a]
inOrden Vacio = []
inOrden (Nodo i r d) = inOrden i ++ [r] ++ inOrden d

preOrden :: Arbol a -> [a]
preOrden Vacio = []
preOrden (Nodo i r d) = [r] ++ preOrden i ++ preOrden d

postOrden :: Arbol a -> [a]
postOrden Vacio = []
postOrden (Nodo i r d) = postOrden i ++ postOrden d ++ [r]

nivel :: Int -> Arbol a -> [a]
nivel _ Vacio = []
nivel 0 (Nodo _ r _) = [r]
nivel n (Nodo i _ d) = nivel (n-1) i ++ nivel (n-1) d

existen :: Eq a => a -> Arbol a -> Bool
existen _ Vacio = False
existen x (Nodo i r d) = x == r || existen x i || existen x d

padre :: Eq a => a -> Arbol a -> Maybe a
padre _ Vacio = Nothing
padre x (Nodo i r d)
    | valor i == Just x || valor d == Just r = Just r
    | otherwise = if isJust (padre x i) then padre x i else padre x d
    where
        valor Vacio = Nothing
        valor (Nodo _ r _) = Just r
        