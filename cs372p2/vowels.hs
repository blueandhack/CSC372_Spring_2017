module Main where

vowelListList :: String -> [String]
vowelListList long = do
    let a = listListHelper long 'a' 'A'
    let e = listListHelper long 'e' 'E'
    let i = listListHelper long 'i' 'I'
    let o = listListHelper long 'o' 'O'
    let u = listListHelper long 'u' 'U'
    [a,e,i,o,u]


listListHelper :: String -> Char -> Char -> String
listListHelper s a b
    | null s = ""
    | head s == a || head s == b = a : listListHelper (tail s) a b
    | otherwise = listListHelper (tail s) a b

vowelHistogram :: [String] -> String
vowelHistogram s = do
    let a = histogramHelper (head s)
    let e = histogramHelper (s!!1)
    let i = histogramHelper (s!!2)
    let o = histogramHelper (s!!3)
    let u = histogramHelper (s!!4)
    "a: " ++ a ++ "\n" ++ "e: " ++ e ++ "\n" ++ "i: " ++ i ++ "\n" ++ "o: " ++ o ++ "\n" ++ "u: " ++ u ++ "\n"

histogramHelper :: String -> String
histogramHelper s
    | null s = ""
    | otherwise = "*" ++ histogramHelper (tail s)

main :: IO ()
main = do
    print $ vowelListList "Ate\na horse?\nAaa! Ick, ick, ick!\n"
    print $ vowelHistogram ["aaaaa", "ee", "iii", "o", ""]
