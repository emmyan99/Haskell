slice :: [a] -> Int -> Int -> [a]
slice (x:xs) i k = sliceHelper (x:xs) 1 (length(x:xs))
    where 
        sliceHelper (x:xs) index1 index2
           | index1 == i && index2 /= k = sliceHelper (init (x:xs)) index1 (index2 -1)
           | index1 /= i && index2 == k = sliceHelper (xs) (index1 +1) (index2)
           | index1 /= i && index2 /= k = sliceHelper (init (xs)) (index1 +1) (index2 -1)
           | index1 == i && index2 == k = (x:xs)



--λ> slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
--"cdefg"


