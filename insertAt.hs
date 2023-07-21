insertAt :: a -> [a] -> Int -> [a]
insertAt c xs n = insertAtHelper c xs 1
  where
    insertAtHelper c (x:xs) index
       | index /= n = x : insertAtHelper c (xs) (index + 1) 
       | otherwise = c : (x:xs)
    
