import Data.List
mylines = ["abe","ajhf","akig","adc","dkje","dihb","bfgc"]
mypoints = "abcdefghijk"
connected a b = belong [a,b] mylines
onaline a b c = belong [a,b,c] mylines
belong x xs = any (\y -> sub x y) xs
sub x y = all (\z -> elem z y) x
triangle [a, b, c] = connected a b && connected a c && connected b c && not (onaline a b c)
triplepoints = nub [sort [a,b,c] | a <- mypoints, b <- mypoints, b /= a, c <- mypoints, c /= a, c /= b]
main = putStrLn $ show $ length $ filter triangle triplepoints