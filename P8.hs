compress [] = []
compress [x] = [x]
compress (x:y:xs) = if x /= y then x:compress (y:xs)
                    else compress (x:xs)

main = do
    print $ show $ compress "aaaabccaadeeee"
