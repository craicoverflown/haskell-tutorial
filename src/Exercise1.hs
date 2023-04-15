module Exercise1 (last,init,(!!)) where

import Prelude hiding (last,init,(!!))

last :: [a] -> a
last xs = head (reverse xs)

init :: [a] -> [a]
init xs = take (length xs - 1) xs

(!!) :: [a] -> Int -> a
xs !! n = last (take (n + 1) xs)

