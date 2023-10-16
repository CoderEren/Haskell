{-
Multi-line comments
-}

-- single line comments

-- data types: Int (more efficient), Integer (big numbers), Bool, Char

-- lists are homogenous so all elements must be the same type

-- [1,2,3] ++ [4,5,6] -> combines the two lists
-- 'A':" Small Cat" -> adds 2 things of different types together
-- [0,1,2,3,4] !! 1 -> returns the item at the first index
-- head [5,4,3,2,1] -> returns the first elements
-- tail [5,4,3,2,1] -> returns the list after removing the first element
-- last [5,4,3,2,1] -> returns the last element
-- init [5,4,3,2,1] -> returns the list after removing the last element
-- length [5,4,3,2,1] -> returns the length of the list
-- reverse [5,4,3,2,1] -> reverses the list
-- [1..20] -> creates a list of numbers from 1 to 20
-- [1,3..20] -> creates a list starting from 1 and increments in 2 until 20

{-data Bool where
    True :: Bool
    False :: Bool-}

-- data Bool = False | True
-- data Char = 'a' | 'b' | 'c' | ...
{-
doubleSmallNumber x = if x > 100
    then x
    else x * 2
-}

-- Recursive Functions
{-
even :: Int -> Bool
even 0 = True
even n = odd(n-1)

odd :: Int -> Bool
odd 0 = False
odd n = even(n-1)
-}

-- function with multiple arguments
{-
odd :: (Int, Int) -> Int
odd (x, y) = x + y
-}

-- where clause
{-
power2 :: Int -> Int -> Int
power n 0 = 1
power n k
   | even k = x * x
   | otherwise = n * x * x
   where
    x = power n (k `div` 2)
-}

-- let clause
{-
power3 :: Int -> Int -> Int
power3 n 0 = 1
power3 n k
   | even k = let x = power3 n (k `div` 2) in x*x
   | otherwise = let x = power3 n (k `div` 2) in n*x*x
-}

-- a is a variable type of data (Int, Char, Bool)
{-
anotherFunc :: a -> a
anotherFunc x = x

const :: a -> b -> b 
const x y = y
-}

-- (,) x y => adds x and y into a tuple
-- 1:2:3:[] => adds 1, 2, 3 into an array

-- apply a function to a list of items
{-
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

ords2 = map ord
-}

-- list comprehension
-- [f x | x <- xs] = map f xs

-- combine functions - do ord first and then add1
-- cipher = add1.ord
-- cipher = map (add1.ord)

-- filtering function - applies a filtering function to an array of data
{-
filter2 :: (a -> Bool) -> [a] -> [a]
filter2 p [] = []
filter2 p (x:xs)
   | p x = x : filter2 p xs 
   | otherwise = filter2 p xs
-}