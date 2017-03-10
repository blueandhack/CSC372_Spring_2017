{- hailstones.hs: This is a math game, it from a positive number and it end number one.
-- So, it has some rules: If that integer is an even number, halve it.
-- If it is odd, triple it and add one.
-- Such as, if the start number is 7
-- It return a integer array that is
-- [7,22,11,34,17,52,26,13,40,20,10,5,16,8,4,2,1]
-}
hailstones :: Int -> [Int]
-- The function just to check stat number, then call helper function
hailstones n
    | n < 1 = error "The number less than one"
    | otherwise = n : a
        where a = helper n

helper :: Int -> [Int]
-- x is start number, it use recurvise to get the sequnce numbers.
helper x
    | x < 1 = error "The number less than one"
    | x == 1 = []
    | mod x 2 == 0 = div x 2 : helper (div x 2)
    | otherwise = 3*x+1 : helper (3*x+1)


main :: IO ()
main = do
    print $ hailstones 9
    print $ hailstones (-9)
