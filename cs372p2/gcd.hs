module Main where

ourGCD :: Int -> Int -> Int
ourGCD x y
    | x == 0 && y == 0 = error "Something wrong"
    | x < 0 = error "Something wrong"
    | y < 0 = error "Something wrong"
    | x == 0 = y
    | y == 0 = x
    | otherwise = ourGCD y a
        where a = mod x y


main :: IO ()
main =
    print $ ourGCD 780 612
