calc n = sum [ x | x <- [1..n], x `mod` 3 == 0 || x `mod` 5 == 0]
