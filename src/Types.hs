module Types where

type Day = Int
type Year = Int

data Solution = forall a. Solution
    { day :: (Year, Day)
    , parse :: [String] -> a
    , part1 :: a -> String
    , part2 :: a -> String
    }
