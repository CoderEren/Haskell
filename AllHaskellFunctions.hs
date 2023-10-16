module Main where
import Data.Char

main = putStrLn "Hello World"

square :: Int -> Int
square x = x * x

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

evenNumber :: Int -> Bool
evenNumber n
   | mod n 2 == 0 = True
   | otherwise = False

power :: Int -> Int -> Int
power n 0 = 1
power n k
   | evenNumber k = power n (div k 2) * power n (div k 2)
   | otherwise = n * power n (k `div` 2) * power n (k `div` 2)

power2 :: Int -> Int -> Int
power2 n 0 = 1
power2 n k
   | even k = x * x
   | otherwise = n * x * x
   where
    x = power2 n (k `div` 2)

power3 :: Int -> Int -> Int
power3 n 0 = 1
power3 n k
   | even k = let x = power3 n (k `div` 2) in x*x
   | otherwise = let x = power3 n (k `div` 2) in n*x*x

const :: a -> b -> b 
const x y = y

drop2 :: Int -> [a] -> [a]
drop2 0 xs = xs
drop2 n [] = []
drop2 n (x:xs) = drop2 (n-1) xs 

ords :: [Char] -> [Int]
ords [] = []
ords (x:xs) = ord x : ords xs

succs :: [Int] -> [Int]
succs [] = []
succs (x:xs) = (x + 1) : succs xs

add1 :: Int -> Int
add1 x = x + 1

map2 :: (a -> b) -> [a] -> [b]
map2 f [] = []
map2 f (x:xs) = f x : map2 f xs

cipher = map (add1.ord)

feven :: [Int] -> [Int]
feven [] = []
feven (x:xs)
   | even x = x : feven xs
   | otherwise = feven xs

filter2 :: (a -> Bool) -> [a] -> [a]
filter2 p [] = []
filter2 p (x:xs)
   | p x = x : filter2 p xs 
   | otherwise = filter2 p xs

zip2 :: [a] -> [b] -> [(a, b)]
zip2 [] _ = []
zip2 _ [] = []
zip2 (x:xs) (y:ys) = (x, y) : zip2 xs ys

zipWith2 :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith2 f (x:xs) (y:ys) = f x y : zipWith2 f xs ys
zipWith2 _ _ _ = []

unzip2 :: [(a, b)] -> ([a], [b])
unzip2 [] = ([], [])
unzip2 ((x,y) : xys) = (x:xs, y:ys)
   where 
      (xs, ys) = unzip2 xys

ununzip :: ([a], [b]) -> [(a, b)]
ununzip (xs, ys) = zip xs ys

curry :: ((a, b) -> c) -> (a -> b -> c)
curry f x y = f (x, y)

uncurry :: (a -> b -> c) -> ((a, b) -> c)
uncurry g (x, y) = g x y