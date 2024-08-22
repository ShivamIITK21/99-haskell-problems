pack [] = [[]]
pack [x] = [[x]]
pack (x:y:xs) = if x == y then (x:head (pack(y:xs))):tail (pack (y:xs))
                else [x]:pack(y:xs)

encode [] = []
encode xs = map (\ys -> (length ys, head ys)) (pack xs)

main = do
    print $ show $ encode "aaaabccaadeeee"
