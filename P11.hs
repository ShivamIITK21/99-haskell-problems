data SingleorTuple a b = Single b | Multiple a b


instance (Show a, Show b) => Show(SingleorTuple a b) where
    show (Single b) = "Single " ++ show b
    show(Multiple a b) = "Multiple " ++ show a ++ " " ++ show b

pack [] = [[]]
pack [x] = [[x]]
pack (x:y:xs) = if x == y then (x:head (pack(y:xs))):tail (pack (y:xs))
                else [x]:pack(y:xs)

encode [] = []
encode xs = map f (pack xs)
            where f xs = if length xs == 1 then Single (head xs)
                         else Multiple (length xs) (head xs)


main = do
    print $ show $ encode "aaaabccaadeeee"
