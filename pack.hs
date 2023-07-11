pack :: Eq a => [a] -> [[a]]
pack [] = []
pack [x] = [[x]]
pack (x:xs) = let (first, rest) = span (==x) (x:xs)
              in first : pack rest

--scans the list from the beginning and groups consecutive elements that are equal to x into first, and puts the remaining elements into rest


{-
λ> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 
             'a', 'd', 'e', 'e', 'e', 'e']
["aaaa","b","cc","aa","d","eeee"]



a ++ pack 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'
a ++ a ++ pack 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'
a ++ a ++ a ++ pack 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'
a ++ a ++ a ++ a ++ pack 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'

"aaaa" + 

-}



