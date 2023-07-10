elementAt :: [a] -> Int -> Maybe a
elementAt xs n = do
    



readLines :: Int -> [String] -> [String]
readLines n lines = do
    line <- getLine
    readLines (n - 1) (line : lines)