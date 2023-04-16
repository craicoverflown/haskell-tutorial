module Lib (
    z,
    list, 
    tuple, 
    exampleChar, 
    exampleString, 
    stringButListChar, 
    isStringListChar,
    add, 
    first,
    sfuse
) where

x :: Integer
x = 5

-- y :: Bool
-- y = True

y :: Integer
y = 7

z :: Integer
z = x + y

-- e = z + True

list :: [String]
list = ["a", "b", "c"]

-- invalidList = [1, "c", True]

tuple :: (Integer, String, Bool)
tuple = (1, "c", True)

exampleChar :: Char
exampleChar = 'a'

-- notChar = 'ab'

exampleString :: String
exampleString = "ab"

stringButListChar :: [Char]
stringButListChar = "ab"

isStringListChar :: String -> [Char] -> Bool
isStringListChar str lchr = str == lchr

add :: Integer -> Integer -> Integer
add summand1 summand2 = summand1 + summand2

first :: (a,b) -> a
first (left,_right) = left

sfuse :: [Char] -> [Char] -> [Char]
sfuse word1 word2 = word1 ++ word2