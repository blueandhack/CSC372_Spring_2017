----------------------------------------------------------------------
-- Assignment: Homework #1: Haskell Exercise
-- Author: Your Name (Your E-mail Address)
-- Grader: Patrick Hickey / Andrea Padula
--
-- Course: CSc 372
-- Instructor: L. McCann
-- Due Date: January 20, 2017
--
-- Description: A simple type-in exercise to ensure that students
-- are able to successfully use haskell on lectura.
--
-- Language: Haskell (ghc)
-- Ex. Packages: None.
--
-- Deficiencies: None.
----------------------------------------------------------------------
fibStep :: (Integer, Integer) -> (Integer, Integer)
fibStep(u,v) = (v,u+v)

fibPair :: Integer -> (Integer, Integer)
fibPair n
    | n == 0    = (0, 1)
    | otherwise = fibStep(fibPair (n-1))

fastFib :: Integer -> Integer
fastFib = fst . fibPair

main = do
    putStrLn "The first 10 Fibonacci numbers are:"
    print ([fastFib(i) | i <- [0..9]])
