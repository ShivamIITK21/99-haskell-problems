myButLast(x:y:[]) = x
myButLast(x:xs) = myButLast xs

main = do
    print $ show $ myButLast [1, 2, 3, 4, 5]
    print $ show $ myButLast [1, 2]

