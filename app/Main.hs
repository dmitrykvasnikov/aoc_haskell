module Main where

-- use for debug of single day (see second main function)
import Years.Y2015.Day5 (solution)

-- import Solutions (solutions)
import System.Directory
import Text.Printf
import Types

-- set debug to True to load ./input/sample.txt as input
debug :: Bool
debug = False

-- input doesn't split on lines automatically
runSolution :: Solution -> IO ()
runSolution (Solution (y, d) p p1 p2) = do
    let f = if debug then "./input/sample.txt" else "./input/" <> show y <> "_" <> printf "%02d" d <> ".txt"
    doesFileExist f >>= \case
        True -> do
            input <- (p . lines) <$> readFile f
            putStrLn $ "Solution for Year " <> show y <> ", Day " <> show d
            putStrLn $ "Part1: " <> p1 input <> "\nPart2: " <> p2 input
        False -> do
            putStrLn "ERROR: input file doesn't exist"

-- TODO: pick year and day in main function
-- main :: IO ()
-- main = do
--     putStrLn "AOC Solver"
--     runSolution . head $ solutions

-- main for single day debugging

main :: IO ()
main = runSolution solution
