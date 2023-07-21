rotate :: [a] -> Int -> [a]
rotate (xs) n 
    | n > 0 = rotateLeft (xs) n 
    | n < 0 = rotateRight (xs) n 
    | n == 0 = (xs)

rotateLeft :: [a] -> Int -> [a]
rotateLeft (xs) 0 = (xs)
rotateLeft (xs) 1 = tail xs ++ [head xs]
rotateLeft (xs) n = rotateLeft (tail xs ++ [head xs]) (n-1)
    

rotateRight :: [a] -> Int -> [a]
rotateRight (xs) 0 = (xs)
rotateRight (xs) 1 = [last xs] ++ init xs
rotateRight (xs) n = rotateRight ([last xs] ++ init xs) (n+1)





{-
λ> rotate ['a','b','c','d','e','f','g','h'] 3
"defghabc"

λ> rotate ['a','b','c','d','e','f','g','h'] (-2)
"ghabcdef"

head
tail
init


-}