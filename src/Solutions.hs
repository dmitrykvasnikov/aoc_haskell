module Solutions where

import Types
import Years.Y2015.Day1 qualified as Y2015D1

-- Example of solution
-- solution :: Solution
-- solution = Solution (2015, 1) parser p1 p2
-- type Input = ()
-- parser :: [String] -> Input
-- parser _ = ()
-- p1 :: Input -> String
-- p1 _ = ""
-- p2 :: Input -> String
-- p2 _ = ""

solutions :: [Solution]
solutions =
    [ Y2015D1.solution
    ]
