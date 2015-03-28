import Control.Monad (ap)
import Data.List (sort)

palindrome :: (Eq a) => [a] -> Bool
palindrome n = reverse n == n

digits3 :: [Integer]
digits3 = [100..999]

product3 :: [Integer]
product3 = [a * b | a <- digits3, b <- digits3]

answer :: Integer
answer = read . last . (filter palindrome) . (map show) $ sort product3 :: Integer

-- BONUS: one liner
answer2 :: Integer
answer2 = read .
          last .
          (filter (ap (==) reverse)) .
          (map show) $
          sort [a * b | a <- [100..999], b <- [100..999]] :: Integer
