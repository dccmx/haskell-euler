pfac m n
  | m == n = m
  | m `mod` n == 0 = pfac (m `div` n) n
  | otherwise = pfac m (n+1)
mpfac m = pfac m 2
-- mpfac 600851475143
