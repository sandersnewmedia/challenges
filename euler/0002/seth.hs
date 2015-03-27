import Data.List (sum)

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

answer :: Integer
answer = sum $
         filter (\x -> x `mod` 2 == 0) $
         takeWhile (< 4000000) fibs
