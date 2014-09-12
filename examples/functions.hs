{- function input / output type delaration -}
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase str = [c | c <- str, c `elem` ['A'..'Z']]


{- function input / output type delaration -}
addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z


fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci(x-1) + fibonacci(x-2)
