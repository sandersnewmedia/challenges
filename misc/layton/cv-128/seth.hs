import Data.List (product, union)

type Key = ([Integer], [Integer], [Integer])

-- generate all unique Integer triples e.g [[0,1,2],[0,1,3],[0,1,4], etc..]
triples :: [[Integer]]
triples = [[x, y, z] | x <- [1..9], y <- [1..9], z <- [1..9],
                       x /= y, y /= z, x /= z] -- ensures unique Integers in triple

-- generate all valid keys
keys :: [Key]
keys = [(x, y, z) | x <- triples, y <- triples, z <- triples,
                    length(foldl union [] [x,y,z]) == 7, -- ensure each number used once, two are shared
                    product x == product y, product y == product z] -- transitive product equality

-- lazily evaluates to the first valid Key
answer :: Key
answer = head keys
