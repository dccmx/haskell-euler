nthprime n = [x | x <- [2..], isprime x] !! (n-1)
  where
    isprime n
      | n <=2 = True
      | otherwise = [x | x <- [2..((ceiling . sqrt . fromIntegral) n)], n `mod` x == 0] == []
