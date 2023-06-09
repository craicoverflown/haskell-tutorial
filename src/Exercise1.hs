{-# OPTIONS_GHC -Wno-identities #-}
module Exercise1 (last,init,(!!),firstHalf,lastHalf,inners,distance,nthRoot) where

import Prelude hiding (last,init,(!!))

last :: [a] -> a
last xs = head (reverse xs)

init :: [a] -> [a]
init xs = take (length xs - 1) xs

(!!) :: [a] -> Int -> a
xs !! n
    | n > -1 && n < length xs = last (take (n + 1) xs)
    | otherwise = error "ERROR"


firstHalf :: [a] -> [a]
firstHalf xs = take (div (length xs) 2) xs

lastHalf :: [a] -> [a]
lastHalf xs = drop (div (length xs) 2) xs
-- lastHalf xs = reverse (take (sum [div (length xs) 2, rem (length xs) 2]) (reverse xs))
-- lastHalf xs = reverse (take (ceiling (toRational (length xs) / 2)) (reverse xs))

inners :: [a] -> [a]
inners xs = init (tail xs)

distance :: (Float,Float) -> (Float,Float) -> Float
distance (x1, y1) (x2, y2) = sqrt ((x2 - x1) ** 2 + (y2 - y1) ** 2)

nthRoot :: Float -> Int -> Float
nthRoot x n = fromInteger (floor (x ** (1 / fromIntegral n)))