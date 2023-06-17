elementAt :: [a] -> Int -> a 
elementAt (x:xs) 0 = x 
elementAt (x:xs) n = elementAt xs (n-1) 
