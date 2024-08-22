myReverse [] = []
myReverse(x:xs) = myReverse xs ++ [x]

isPalindrome xs = myReverse xs == xs

main = do
    print $ show $ isPalindrome "madamimadam"
    print $ show $ isPalindrome [1,2,3] 
