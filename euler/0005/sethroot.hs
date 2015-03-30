isFactor :: (Integral a) => a -> a -> Bool
isFactor comp fact = comp `rem` fact == 0

required_factors :: [Int]
required_factors = [19,18,17,16,14,13,11]

factorsFrom :: [Int] -> Int -> [Int]
factorsFrom range n = takeWhile (isFactor n) range

answer = head . (filter pred) $ [20, 40..]
  where pred = (== 7) . length . factorsFrom required_factors

main :: IO()
main = print answer

-- ghc -O2 sethroot.hs
-- ./sethroot
