isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = isEqual xs (reverse xs) 
  where
    isEqual :: (Eq a) => [a] -> [a] -> Bool 
    isEqual [] []     = True 
    isEqual (x:xs) [] = False
    isEqual [] (y:ys) = False
    isEqual (x:xs) (y:ys) 
        | (x == y) = isEqual xs ys 
        | otherwise = False  
