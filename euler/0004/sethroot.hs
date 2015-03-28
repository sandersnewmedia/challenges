import Data.List (sort)

palindrome :: (Eq a) => [a] -> Bool
palindrome n = reverse n == n

digits3 :: [Integer]
digits3 = [100..999]

palindromes3 :: [Integer]
palindromes3 = [a * b | a <- digits3, b <- digits3,
                palindrome $ show $ a * b]

answer :: Integer
answer = last $ sort palindromes3
