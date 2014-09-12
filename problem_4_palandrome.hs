{- Find the largest palindrome made from the product of two 3-digit numbers. -}

isPalendrome :: String -> Bool
isPalendrome x = x == reverse x

palendromes :: [Int]
palendromes = [x | x <- products, isPalendrome(show(x)) == True]
  where
    products = [y*z | y <- [100..999], z <- [y..999]]

largestPalendrome = maximum palendromes
