import Data.List (product, union)

type Key = ([Integer], [Integer], [Integer])

-- generate all Integer triples e.g [[0,0,0],[0,0,1],[0,0,2], etc..]
triples :: [[Integer]]
triples = [[x, y, z] | x <- [1..9], y <- [1..9], z <- [1..9],
                       x /= y, y /= z, x /= z]

-- generate all keys
keys :: [Key]
keys = [(x, y, z) | x <- triples, y <- triples, z <- triples,
                    length(foldl union [] [x,y,z]) == 7, -- each number used once, two are shared
                    product x == product y, product y == product z] -- transitive product equality

-- grabs the first answer
answer :: Key
answer = head keys
