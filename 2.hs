fib = (map fib' [0 ..] !!)
   where fib' 0 = 0
         fib' 1 = 1
         fib' n = fib (n-2) + fib (n-1)

calc n = sum [x | x <- takeWhile (<=n) [x | x <- [fib x | x <- [1..]]], x `mod` 2 == 0]
-- calc 4000000
