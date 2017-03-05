module Main where

meanIntList :: [Int] -> Float
meanIntList x
    | null x = error "The list is empty"
    | otherwise = a / b
        where   a = fromIntegral(sum x)
                b = fromIntegral(length x)



main :: IO ()
main =
    print $ meanIntList [3,4,8]
