module Solutions where

import Types
import Years.Y2015.Day1 qualified as Y2015D1
import Years.Y2015.Day2 qualified as Y2015D2
import Years.Y2015.Day3 qualified as Y2015D3
import Years.Y2015.Day4 qualified as Y2015D4

-- Example of solution module
-- parser takes input file as single line, so running lines on it is solution responsibility
-- module Years.Y___.Day__ where
-- import Types
-- type Input = ()
-- solution :: Solution
-- solution = Solution (____, __) parser p1 p2
-- parser :: [String] -> Input
-- parser _ = ()
-- p1 :: Input -> String
-- p1 _ = ""
-- p2 :: Input -> String
-- p2 _ = ""

solutions :: [Solution]
solutions =
    [ Y2015D1.solution
    , Y2015D2.solution
    , Y2015D3.solution
    , Y2015D4.solution
    ]
