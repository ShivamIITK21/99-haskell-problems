myReverse [] = []
myReverse(x:xs) = myReverse xs ++ [x]

main = do
    print $ show $ myReverse "A man, a plan, a canal, panama!"
