module Years.Y2015.Day2 where

import Data.List (sort)
import Data.List.Split (splitOn)
import Types

type Input = [[Int]]
area1 :: [Int] -> Int
area1 [x, y, z] = 3 * x * y + 2 * x * z + 2 * y * z
area1 _ = error "Input error, wrong amount of size"

area2 :: [Int] -> Int
area2 [x, y, z] = 2 * (x + y) + x * y * z
area2 _ = error "Input error, wrong amount of size"

solution :: Solution
solution = Solution (2015, 2) parser p1 p2
parser :: String -> Input
parser = map sort . map (map read . splitOn "x") . lines
p1 :: Input -> String
p1 = show . sum . map area1
p2 :: Input -> String
p2 = show . sum . map area2
