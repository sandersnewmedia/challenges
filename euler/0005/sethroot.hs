import Data.List (product, union)
import Data.Monoid

isFactor :: (Integral a) => a -> a -> Bool
isFactor comp fact = comp `rem` fact == 0

range :: [Int]
range = [19,18,17,16,14,13,11]

factorsFrom :: [Int] -> Int -> [Int]
factorsFrom r n = takeWhile (isFactor n) r

answer = head . (filter pred) $ [20, 40..]
  where pred = (== 7) . length . factorsFrom range

main :: IO()
main = print answer

-- ghc -O2 sethroot.hs
-- ./sethroot
