import Data.List (sum)

factor :: (Integral a) => a -> a -> Bool
factor n = (== 0) . (mod n)

answer :: Integer
answer = sum $ [a | a <- [1..999],
                    factor a 3 || factor a 5]
