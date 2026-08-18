module Years.Y2015.Day4 where

import Crypto.Hash.MD5 (hash)
import Data.ByteString.Char8 (pack, unpack)
import Data.List (isPrefixOf)
import Types

type Input = String

findMinIndex :: String -> String -> Int
findMinIndex prefix secret = head [i | i <- [1 ..], isPrefixOf prefix (show . hash . pack $ secret <> show i)]

solution :: Solution
solution = Solution (2015, 4) parser p1 p2
parser :: [String] -> Input
parser = head
p1 :: Input -> String
-- p1 = show . fst . head . filter (BS.isPrefixOf five0 . snd) . zipWith (\i bs -> (i, bs <> (BS.pack . show $ i))) [1 ..] . repeat
p1 = show . findMinIndex "00000"
p2 :: Input -> String
p2 _ = ""
