pack [] = [[]]
pack [x] = [[x]]
pack (x:y:xs) = if x == y then (x:head (pack(y:xs))):tail (pack (y:xs))
                else [x]:pack(y:xs)

main = do
    print $ show $ pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 
             'a', 'd', 'e', 'e', 'e', 'e']
