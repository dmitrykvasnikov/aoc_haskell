module Years.Y2015.Day3 where

import Data.Set (Set)
import Data.Set qualified as S
import Types

type Input = [Dir4]

charToDir :: Char -> Dir4
charToDir '>' = E
charToDir '^' = U
charToDir '<' = W
charToDir 'v' = D
charToDir c = error $ "Wrong input: '" <> [c] <> "'"

move :: Dir4 -> Coord -> Coord
move U (x, y) = (x, y - 1)
move D (x, y) = (x, y + 1)
move E (x, y) = (x - 1, y)
move W (x, y) = (x + 1, y)

mkMove :: (Coord, Set Coord) -> Dir4 -> (Coord, Set Coord)
mkMove (c, s) d = (c', S.insert c' s)
  where
    c' = move d c

visited :: Input -> Set Coord
visited = snd . foldl' mkMove ((0, 0), S.fromList [(0, 0)])

splitInput :: Input -> (Input, Input)
splitInput i = go True ([], []) i
  where
    go _ (i1, i2) [] = (reverse i1, reverse i2)
    go True (i1, i2) (i : is) = go False ((i : i1), i2) is
    go False (i1, i2) (i : is) = go True (i1, (i : i2)) is

solution :: Solution
solution = Solution (2015, 3) parser p1 p2
parser :: [String] -> Input
parser = map charToDir . head
p1 :: Input -> String
p1 = show . S.size . visited
p2 :: Input -> String
p2 i = show $ S.size (S.union (visited i1) (visited i2))
  where
    (i1, i2) = splitInput i
