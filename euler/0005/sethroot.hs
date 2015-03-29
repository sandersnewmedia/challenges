import Data.List (product, union)
import Data.Monoid

isFactor :: (Integral a) => a -> a -> Bool
isFactor n = (== 0) . (mod n)

isPrime :: Int -> Bool
isPrime n = not . getAny . mconcat . map Any $ [isFactor n a | a <- [2 .. (n - 1)]]

rangeLimit :: Int
rangeLimit = 10

range :: [Int]
range = enumFromTo 1 rangeLimit

-- filters range r that are factors of n
factorsFromRange :: [Int] -> Int -> [Int]
factorsFromRange r n = filter (isFactor n) r

-- smallest number to consider
-- will contain all primes as factors as well as the range limit
lowBound :: Int
lowBound = product . (union [rangeLimit]) $ [a | a <- range, isPrime a]

answer :: Int
answer = head . (filter pred) $ enumFrom lowBound
  where pred = (== rangeLimit) . length . (factorsFromRange range)
