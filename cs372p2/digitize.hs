{- digitize.hs: The program will display digits and/or colons for special format.
-- Such that: if the string is "12:56"
-- then is will dispaly: " _ _ _ \n | _|.|_ |_ \n ||_ . _||_|"
-- So the String consisting of three lines of space, underscore,
-- ‘pipe’, and/or period characters
-}

digitize :: String -> String
-- a is string, the function will call digitizeHelper to get a 2D string array
-- then it call getString to convert the 2D string array to a one line string
digitize a = do
    let numbers = digitizeHelper a
    let lineOne = getString numbers 0 ++ "\n"
    let lineTwo = getString numbers 1 ++ "\n"
    let lineThree = getString numbers 2
    lineOne ++ lineTwo ++ lineThree

getString :: [[String]] -> Int -> String
-- s is 2D string array, a is index, the function will convert the 2D string array to one line string
getString s a
    | null s = []
    | otherwise = head s!!a ++ getString (tail s) a

digitizeHelper :: String -> [[String]]
{- s is string, the function will use recursive to find how many digits and colons it have
-- it call getOneNumber to find digits and colons
-- and it call digitizeHelper to go to next char to scan whole stirng
-}
digitizeHelper s
    | null s = []
    | otherwise = do
        let number = getOneNumber (head s)
        number : digitizeHelper (tail s)

getOneNumber :: Char -> [String]
{- s is char, the function will find what's the char?
-- if the char is number or colon then return a string array,
-- if not, return error
-}
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
    | otherwise = error "The argument contains charachters other than digits and colons"


-- main :: IO ()
-- main = do
--     putStr $ digitize "12:56" ++ "\n"
--     print $ digitize "12:56" ++ "\n"
--     putStr $ digitize "10:20" ++ "\n"
--     putStr $ digitize "1:2" ++ "\n"
--     putStr $ digitize ""
--     print $ digitize ""
--     putStr $ digitize "()"
