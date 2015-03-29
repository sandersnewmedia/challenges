import Data.List (product, union)
import Data.Monoid

isFactor :: (Integral a) => a -> a -> Bool
isFactor n = (== 0) . (mod n)

isPrime :: Int -> Bool
isPrime n = not . getAny . mconcat . map Any $ [isFactor n a | a <- [2 .. (n - 1)]]

rangeLimit :: Int
rangeLimit = 20

range :: [Int]
range = enumFromTo 1 rangeLimit

factorsForRange :: [Int] -> Int -> [Int]
factorsForRange r n = [a| a <- r, isFactor n a]

-- smallest number will contain all primes as factors and the range limit
start :: Int
start = product . (union [rangeLimit]) $ [a | a <- range, isPrime a]

has20Factors :: Int -> Bool
has20Factors = (== rangeLimit) . length . (factorsForRange range)

answer :: Int
answer = head . (filter has20Factors) $ enumFrom start
