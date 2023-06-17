data NestedList a = Elem a | List [NestedList a] 
    deriving (Show) 

flatten :: NestedList a -> [a] 
flatten _ = []
