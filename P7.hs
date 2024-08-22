data NestedList a = Elem a | List [NestedList a]

flatten (Elem a) = [a]
flatten (List []) = []
flatten (List x) = foldr ((++) . flatten) [] x

main = do
    print $ show $ flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
    print $ show $ flatten (Elem 1)


