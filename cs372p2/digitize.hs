module Main where

digitize :: String -> String
digitize a = do
    let numbers = digitizeHelper a
    let lineOne = getString numbers 0 ++ "\n"
    let lineTwo = getString numbers 1 ++ "\n"
    let lineThree = getString numbers 2
    lineOne ++ lineTwo ++ lineThree

getString :: [[String]] -> Int -> String
getString s a
    | null s = []
    | otherwise = head s!!a ++ getString (tail s) a

digitizeHelper :: String -> [[String]]
digitizeHelper s
    | null s = []
    | otherwise = do
        let number = getOneNumber (head s)
        number : digitizeHelper (tail s)

getOneNumber :: Char -> [String]
getOneNumber s
    | s == '0' = [" _ ","| |","|_|"]
    | s == '1' = ["   ","  |","  |"]
    | s == '2' = [" _ "," _|","|_ "]
    | s == '3' = [" _ "," _|"," _|"]
    | s == '4' = ["   ","|_|","  |"]
    | s == '5' = [" _ ","|_ "," _|"]
    | s == '6' = [" _ ","|_ ","|_|"]
    | s == '7' = [" _ ","  |","  |"]
    | s == '8' = [" _ ","|_|","|_|"]
    | s == '9' = [" _ ","|_|"," _|"]
    | s == ':' = [" ",".","."]
    | otherwise = ["","",""]


main :: IO ()
main = do
    putStr $ digitize "12:56" ++ "\n"
    putStr $ digitize "10:20" ++ "\n"
    putStr $ digitize "1:2" ++ "\n"
    putStr $ digitize ""
