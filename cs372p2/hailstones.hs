module Main where

hailstones :: Int -> [Int]
hailstones n
    | n < 1 = error "The number less than one"
    | otherwise = n : a
        where a = helper n

helper :: Int -> [Int]
helper x
    | x < 1 = error "The number less than one"
    -- | x == 2 || x < 2 = [1]
    | x == 1 = []
    | mod x 2 == 0 = div x 2 : helper (div x 2)
    | otherwise = 3*x+1 : helper (3*x+1)


main :: IO ()
main =
    print $ hailstones 9
