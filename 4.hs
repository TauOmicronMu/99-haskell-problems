myLength :: [a] -> Int
myLength xs = myLength' xs 0 
  where 
    myLength' [] n = n 
    myLength' (x:xs) n = myLength' xs (n + 1)
