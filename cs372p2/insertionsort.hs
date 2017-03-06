module Main where


insertInOrder :: Int -> [Int] -> [Int]
insertInOrder a [] = [a]
insertInOrder a (b:bs) =
    if a < b
        then a:b:bs
    else b : insertInOrder a bs


insertionSort :: [Int] -> [Int]
insertionSort a = do
    let b = []
    insertionSortHelper a b

insertionSortHelper :: [Int] -> [Int] -> [Int]
insertionSortHelper a b
    | null a = b
    | otherwise = do
        let c = insertInOrder (head a) b
        insertionSortHelper (tail a) c


main :: IO ()
main = do
    print $ insertInOrder 4 [1,6,9,12]
    print $ insertionSort [12,6,1,9,4,15,2]
