
{- gcd.hs: GCD is greatest common divisor, so the function is ourGCD
-- that can help us to calculate GCD, we will use recursive to do it.
-}
ourGCD :: Int -> Int -> Int
{- x and y are numbers, we use that to get GCD.
-- When both arugments are zero or either is negative, it will print error
-- If one argument is zero, the GCD is equal to the other argument,
-- so it will return it.
-}
ourGCD x y
    | x == 0 && y == 0 = error "Something wrong"
    | x < 0 = error "Something wrong"
    | y < 0 = error "Something wrong"
    | x == 0 = y
    | y == 0 = x
    | otherwise = ourGCD y a
        where a = mod x y


main :: IO ()
main = do
    print $ ourGCD 780 612
    print $ ourGCD 780 (-612)
