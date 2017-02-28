{- fact.hs:  The classic example of recursion:  Computing factorials.
 - We'll be using this for other purposes in class (see, for example,
 - the commented-out trace call).
 -}

module Main where

import Debug.Trace   -- This is how to import additional modules


-- fact n:  Computes the factorial of the integer argument.

fact :: Integer -> Integer
-- fact n | trace ("fact " ++ show n) False = undefined  -- debugging!
fact n
  | (n == 0) || (n == 1) = 1
  | otherwise            = n * fact (n-1)


main :: IO ()
main = do

  print (fact 25)
