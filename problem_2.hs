{- By considering the terms in the Fibonacci sequence whose values  -}
{- do not exceed four million, find the sum of the even-valued terms. -}

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib x = fib(x-1) + fib(x-2)

sumOfEvenFibonacciNumbers :: Int
sumOfEvenFibonacciNumbers = sum [x | x <- takeWhile (<= 1000000) fibs, even x]
  where
    fibs = [fib x | x <- [1..]]
