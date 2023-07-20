import Data.List(group)
encodeModified xs = [(if length x > 1 then "Multiple" else "Single", length x, head x) | x <- group xs]   