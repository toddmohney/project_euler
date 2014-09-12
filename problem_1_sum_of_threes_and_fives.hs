{- list comprehensions -}
{- read as: f(x) | for all x in [input set], where [predicate] -}

{- soluion to Problem 1 -}
problem_1 = sum [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]
{- example using f(x) -}
problem_1_doubled = sum [x*2 | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]

