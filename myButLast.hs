myButLast :: [a] -> Maybe a
myButLast [] = Nothing
myButLast [x] = Nothing
myButLast [x, _] = Just x
myButLast (_:xs) = myButLast xs

