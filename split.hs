split :: [a] -> Int -> ([a], [a])
split _ 0 = ([], [])
split [] _ = ([], [])
split (x:xs) 1 = ([x], xs)
split (x:xs) n = (x : ys, zs)
    where (ys, zs) = split xs (n-1)
    
   -- split xs (n-1)
    
    
    
--λ> split "abcdefghik" 3
--("abc", "defghik")


--"abcdefghik"

--("a", "bcdefghik")
--("ab", "cdefghik")
--("abc", "defghik")


