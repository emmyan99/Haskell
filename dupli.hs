dupli :: [a] -> [a]
dupli [] = []
dupli [x] = replicate 2 x
dupli (x:xs) = replicate 2 x ++ dupli xs 