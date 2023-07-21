removeAt :: Int -> [a] -> [a]
removeAt n xs = removeAtHelper 1 xs 
  where
    removeAtHelper index (x:xs)
       | index /= n = x : removeAtHelper (index + 1) (xs)
       | otherwise = xs
    

