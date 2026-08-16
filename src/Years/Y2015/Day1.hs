module Years.Y2015.Day1 (solution) where

import Types

solution :: Solution
solution = Solution (2015, 1) parser p1 p2

type Input = String

parser :: [String] -> Input
parser = head
p1 :: Input -> String
p1 = show . foldr (flip move) 0
p2 :: Input -> String
p2 = show . go 0 . zip [1 ..]
  where
    go :: Int -> [(Int, Char)] -> Int
    go f [] = error "Never reached basement"
    go f ((p, c) : rest) = case f of
        -1 -> p - 1
        _ -> go (move f c) rest

move :: Int -> Char -> Int
move f = \case
    '(' -> f + 1
    _ -> f - 1
