elementAt xs k = xs !! (k - 1)

elementAt2 (x:xs) k = if k == 1 then x
                      else elementAt2 xs (k-1)

main = do
    print $ show $ elementAt "haskell" 5
    print $ show $ elementAt2 "haskell" 5
