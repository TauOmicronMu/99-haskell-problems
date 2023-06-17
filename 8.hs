compress :: (Eq a) => [a] -> [a] 
compress xs = compress' xs []
  where 
    compress' :: (Eq a) => [a] -> [a] -> [a] 
    compress' [] _ = [] 
    compress' (x:xs) acc 
        | contains acc x = compress' xs acc 
        | otherwise = x:(compress' xs (x:acc))
 
    contains :: (Eq a) => [a] -> a -> Bool
    contains [] _ = False
    contains (x:xs) e = (x == e) || (contains xs e)   
