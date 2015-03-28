ascendingTriples :: [[Integer]]
ascendingTriples = [[a, b, c] | a <- [1..1000], b <- [1..1000], c <- [1..1000],
                                a < b, b < c]

isPythTriplet :: (Num a, Eq a) => [a] -> Bool
isPythTriplet (f:f':p:[]) = (f^2 + f'^2) == p^2

answer = product .
         head .
         (filter ((== 1000) . sum)) .
         (filter isPythTriplet) $ ascendingTriples
