--encode "aaaabccaadeeee"

import Data.List(group)
encode xs = [(length x, head x) | x <- group xs]   

{-
Input: group "abbcdddeea"
Output: ["a","bb","c","ddd","ee","a"]
-}



