{- Largest prime factor of the number 600851475143 ? -}

{- Naive solution -}
allDivisors :: Int -> [Int]
allDivisors num = [x | x <- [1..limit], rem num x == 0]
  where
    limit = floor $ (fromIntegral num)/2

isPrime :: Int -> Bool
isPrime x = length(allDivisors(x)) == 1

primeFactors :: Int -> [Int]
primeFactors num = [x | x <- allDivisors num, isPrime x == True]

largestPrimeFactor :: Int -> Int
largestPrimeFactor x = last $ primeFactors(x)




{- Efficient solution -}
primes = 2 : filter (null . tail . primeFactors') [3,5..]

primeFactors' n = factor n primes
  where
    factor n (p:ps) 
        | p*p > n        = [n]
        | n `mod` p == 0 = p : factor (n `div` p) (p:ps)
        | otherwise      =     factor n ps

problem_3 = last (primeFactors' 600851475143)
