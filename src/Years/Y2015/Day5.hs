module Years.Y2015.Day5 where

import Data.List (isInfixOf)
import Types

type Input = [String]

type Rule = String -> Bool

good1 :: Rule
good1 = (> 2) . length . filter (flip elem "aeiou")

good2 :: Rule
good2 (x : y : rest) = x == y || good2 (y : rest)
good2 _ = False

good3 :: Rule
good3 s = not $ any (flip isInfixOf s) ["ab", "cd", "pq", "xy"]

good4 :: Rule
good4 (x : y : rest) = isInfixOf [x, y] rest || good4 (y : rest)
good4 _ = False

good5 :: Rule
good5 (x : y : z : rest) = x == z || good5 (y : z : rest)
good5 _ = False

appRules :: [Rule] -> [String] -> [String]
appRules rules = filter (\s -> all ($ s) rules)

solution :: Solution
solution = Solution (2015, 5) parser p1 p2
parser :: [String] -> Input
parser = id
p1 :: Input -> String
p1 = show . length . appRules [good1, good2, good3]
p2 :: Input -> String
p2 = show . length . appRules [good4, good5]
