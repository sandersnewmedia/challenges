import Data.Monoid

isFactor :: (Integral a) => a -> a -> Bool
isFactor n = (== 0) . (mod n)

isPrime :: Integer -> Bool
isPrime n = not . getAny . mconcat . map Any $ [isFactor n a | a <- [2 .. (n - 1)]]

primes :: [Integer]
primes = [2] ++ [n | n <- [3, 5..], isPrime n]

-- slooooooooooow..
answer = last . take 10001 $ primes
