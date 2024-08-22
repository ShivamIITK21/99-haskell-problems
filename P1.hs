myLast(x:[]) = x
myLast(x:xs) = myLast xs

main = do
    print $ show $ myLast['x', 'y', 'z']
    print $ show $ myLast[1, 2, 3, 4, 5]
