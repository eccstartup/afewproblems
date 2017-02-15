import Data.List

list1 = [a | t <- [1..100], n <- [1..(div 50 t)+1], m <-[1..(floor (sqrt $ fromIntegral (div 100 t+1+n*n)))], let b = 2*m*n*t, let a = m*m*t-n*n*t, c <- [1..(min a b)], c*c*(a*a+b*b)==a*a*b*b, a <= 100]

list2 = [a | t <- [1..50], n <- [1..(div 50 t)+1], m <-[1..(div 50 (n*t))+1], let a = 2*m*n*t, let b = m*m*t-n*n*t, c <- [1..(min a b)], c*c*(a*a+b*b)==a*a*b*b, a <= 100]

main = print $ sort.nub $ list1 ++ list2
