ispalindromic n = ispalindromic_list (digits n)
  where
    ispalindromic_list l
      | l == [] = True
      | tail l == [] = True
      | otherwise = (head l == last l) && (ispalindromic_list (tail (init l)))
    digits n
      | n < 10 = [n]
      | otherwise = digits (n `div` 10) ++ [n `mod` 10]

calc n = maximum [x*y | x <- [1..n], y <- [1..n], ispalindromic (x*y)]

-- calc 1000
