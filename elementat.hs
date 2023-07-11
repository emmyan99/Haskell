elementAt :: [a] -> Int -> Maybe a
elementAt (x:xs) 1 = Just x
elementAt (x:xs) n = elementAt xs (n-1)

