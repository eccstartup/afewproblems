import Data.Char

list2Int' n [] = n
list2Int' n (x:xs) = list2Int' (n*10+x) xs

list2Int = list2Int' 0

int2List n = map digitToInt $ show n

addList l1 l2 = int2List $ list2Int l1 + list2Int l2
