findN l
  | tail l == [] = head l
  | otherwise = (head l) * findN (strip (head l) (tail l))
  where
    strip n l = [if x `mod` n == 0 then x `div` n else x | x <- l]

calc n = findN [2..n]

-- calc 20
