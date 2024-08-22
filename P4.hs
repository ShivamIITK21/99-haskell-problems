myLength  = foldr (\_ y -> y + 1) 0

main = do
    print $ show $ myLength [1, 2, 3, 4]
    print $ show $ myLength [1]
    print $ show $ myLength []
