{- mean.hs: It contains one function that meanIntList,
-- it will recive a integer array, and get the array of sum,
-- then it use the sum value to divide the array length.
-- Finally, the function return a average naumber that is float type.
-}
meanIntList :: [Int] -> Float
-- x is a integer array, it will use it to get sum.
meanIntList x
    | null x = error "The list is empty"
    | otherwise = fromIntegral(sum x) / fromIntegral(length x)

-- main :: IO ()
-- main = do
--     print $ meanIntList [3,4,8]
--     print $ meanIntList [3,4,5,6,7,7,8,9,45,435,3,23432,4]
--     print $ meanIntList []
