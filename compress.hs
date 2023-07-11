compare' :: Eq a => a -> a -> Bool
compare' x y 
  | x == y    = True
  | otherwise = False

compress :: Eq a => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:y:xs)
  | compare' x y = compress (y:xs)
  | otherwise = [x] ++ compress (y:xs)