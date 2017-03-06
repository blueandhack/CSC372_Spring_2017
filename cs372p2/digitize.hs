module Main where


digitize :: String -> String
digitize a = a

main :: IO ()
main = do
    putStr $ digitize "12:56"
    putStr $ digitize "10:20"
