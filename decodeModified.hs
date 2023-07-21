data MyData = Multiple Int Char | Single Char

decodeModified :: [MyData] -> String
decodeModified [] = ""
decodeModified [x] = processElement x
decodeModified (x:xs) = processElement x ++ decodeModified xs

processElement :: [MyData] -> String
processElement (Multiple n c) = replicate n c
processElement (Single c) = [c]
