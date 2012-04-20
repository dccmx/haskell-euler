calc n = [x*y*(n-x-y) | x <- [1..(n `div` 3)], y <- [x..(n `div` 2)], x*x + y*y == (n-x-y)*(n-x-y)]
-- calc 1000
