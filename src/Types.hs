module Types where

type Day = Int
type Year = Int
type Coord = (Int, Int)

data Solution where
    Solution ::
        { day :: (Year, Day)
        , parse :: [String] -> a
        , part1 :: a -> String
        , part2 :: a -> String
        } ->
        Solution

data Dir4 where
    U :: Dir4
    E :: Dir4
    D :: Dir4
    W :: Dir4
    deriving (Show, Eq)
