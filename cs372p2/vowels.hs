{- vowels.hs: The program will get some string from "vowels.txt"
-- Then it will fond vowels in the string, and use special format to print
-- For exmaple:
-- a: *****
-- e: **
-- i: ***
-- o: *
-- u:
-- So, use "*" to count how many this in the string.
-}

vowelListList :: String -> [String]
-- long is string, the function will call listListHelper five times, then get string array
-- for example: ["aaaaa","ee","iii","o",""]
vowelListList long = do
    let a = listListHelper long 'a' 'A'
    let e = listListHelper long 'e' 'E'
    let i = listListHelper long 'i' 'I'
    let o = listListHelper long 'o' 'O'
    let u = listListHelper long 'u' 'U'
    [a,e,i,o,u]


listListHelper :: String -> Char -> Char -> String
-- s is string, a is samll letter, and b is capital letter,
-- the function will find the letter in the string a
listListHelper s a b
    | null s = ""
    | head s == a || head s == b = a : listListHelper (tail s) a b
    | otherwise = listListHelper (tail s) a b

vowelHistogram :: [String] -> String
-- s is string array, the function will call histogramHelper to convert the array to special format string
vowelHistogram s = do
    let a = histogramHelper (head s)
    let e = histogramHelper (s!!1)
    let i = histogramHelper (s!!2)
    let o = histogramHelper (s!!3)
    let u = histogramHelper (s!!4)
    "a: " ++ a ++ "\n" ++ "e: " ++ e ++ "\n" ++ "i: " ++ i ++ "\n" ++ "o: " ++ o ++ "\n" ++ "u: " ++ u ++ "\n"

histogramHelper :: String -> String
-- s is string, the function count how many char in the string and use "*" to display
histogramHelper s
    | null s = ""
    | otherwise = "*" ++ histogramHelper (tail s)

main :: IO ()
main = do
    content <- readFile "vowels.txt"
    let s = vowelListList content
    putStr $ vowelHistogram s
