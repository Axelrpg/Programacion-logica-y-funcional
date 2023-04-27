{-
4. Escriba una función en haskell que genere todas las potencias de 2, desde la 0-ésima hasta la ingresada por el usuario. (Int -> String)
-}

eje4 :: Int -> String
eje4 n = show (map (2^) [0..n])