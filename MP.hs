module MP (separators, lookUp, splitText, combine, getKeywordDefs, expand) where

type FileContents = String

type Keyword      = String
type KeywordValue = String
type KeywordDefs  = [(Keyword, KeywordValue)]

separators :: String
separators = " \n\t.,:;!\"\'()<>/\\"

-----------------------------------------------------

{-|
This function will look up a key in a list of key-value pairs,
returning all the values that match with that key.

> lookUp "A" [("A", 8), ("B", 9), ("C", 5), ("A", 7)] == [8, 7]
-}
lookUp :: String -> [(String, a)] -> [a]
lookUp keyword pairs = [index | (letter, index) <- pairs, letter == keyword]

{-|
This function will break up a string with some given separator
characters, returning both the list of separators found between
each "word" and the words themselves.
-}
-- splitSentence :: String -> Int -> [String]
-- splitSentence x:xs 
--    | x `elem` ['a'..'z'] ++ ['A'..'Z'] = splitSentence xs
--    | otherwise = 

splitText :: [Char] -- ^ the separators to split on
          -> String -- ^ the string to split
          -> ([Char], [String])
-- splitText separators sentence = ([letter | letter <- sentence, letter `elem` separators], [])
splitText separators "" = ([], [""])
splitText separators (x:xs)
   | x `elem` separators = (x : listOfSeparators, "":words)
   | otherwise = (listOfSeparators, (x : word) : listOfWords)
   where (listOfSeparators, words@(word : listOfWords)) = splitText separators xs 

{-|
This function interleaves the characters from the first argument
list with the strings in the second argument. The second list must
be non-empty.
-}
combine :: [Char] -> [String] -> [String]
combine [] [""] = [""]
combine _ [x] = [x]
combine (y:ys) (x:xs) = x : [y] : combine ys xs

{-|
This function takes a list of lines and splits each line to
extract a list of keyword-definition pairs.

> getKeywordDefs ["$x Define x", "$y 55"] == [("$x", "Define x"), ("$y", "55")]
-}
getKeywordDefs :: [String] -> KeywordDefs
getKeywordDefs = undefined

{-|
This function takes the contents of two files, one containing
a template and the other the definitions for each keyword
found within the template. It extracts the keyword-definition
information from the info file and uses it to expand the occurrences
of these keywords in the template file, producing new file contents
as a result.

> expand "The capital $1 is $2" "$1 Peru\n$2 Lima." == "The capital of Peru is Lima"
-}
expand :: FileContents -- ^ the template file contents
       -> FileContents -- ^ the info file contents
       -> FileContents
expand = undefined

-- You may wish to uncomment and implement this helper function
-- when implementing expand
-- replaceWord :: String -> KeywordDefs -> String
