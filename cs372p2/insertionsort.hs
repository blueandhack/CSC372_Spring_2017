{- insertionsort.hs: It will read a integer array, and sort them to an ascending-ordered list.
-}

insertInOrder :: Int -> [Int] -> [Int]
{- a is integer and a sorted integer array, the function will isnert the int to the array,
-- it can find right position that sort.
-}
insertInOrder a [] = [a]
insertInOrder a (b:bs) =
    if a < b
        then a:b:bs
    else b : insertInOrder a bs


insertionSort :: [Int] -> [Int]
{- a is an integer array, but is not sorted, so the function will sort the array then return it.
-- It call insertionSortHelper to help sorting the array.
-}
insertionSort a = do
    let b = []
    insertionSortHelper a b

insertionSortHelper :: [Int] -> [Int] -> [Int]
{- a is a not sorted integer array, and b is a sorted array (first it is empty array)
-- the function call insertInOrder to help sorting the array.
-}
insertionSortHelper a b
    | null a = b
    | otherwise = do
        let c = insertInOrder (head a) b
        insertionSortHelper (tail a) c


main :: IO ()
main = do
    print $ insertInOrder 4 [1,6,9,12]
    print $ insertionSort [12,6,1,9,4,15,2]
    print $ insertionSort []
