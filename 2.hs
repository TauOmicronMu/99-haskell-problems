myLastButOne :: [a] -> a 
myLastButOne (x:x':[]) = x 
myLastButOne (x:xs) = myLastButOne xs 
