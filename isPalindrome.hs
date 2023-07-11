myReverse :: [a] -> [a]
myReverse [] = []
myReverse [x] = [x]
myReverse (x:xs) = myReverse xs ++ [x]

isPalindrome :: Eq a => [a] -> Bool
isPalindrome (x:xs)
  | myReverse (x:xs) == (x:xs) = True
  | otherwise = False
