{- function input / output type delaration -}
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase str = [c | c <- str, c `elem` ['A'..'Z']]


{- function input / output type delaration -}
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

