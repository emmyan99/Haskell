
dropEvery :: [a] -> Int -> [a]
dropEvery xs n = dropEveryHelper xs 1
  where
    dropEveryHelper [] _ = []
    dropEveryHelper (x:xs) index
      | index `mod` n == 0 = dropEveryHelper xs (index + 1)
      | otherwise = x : dropEveryHelper xs (index + 1)