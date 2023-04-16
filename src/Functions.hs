module Functions (
    double, 
    quadruple, 
    factorial, 
    average, 
    polynomial,
    sumEvenOdds
) where

double :: Num a => a -> a
double x = x + x

quadruple :: Num a => a -> a
quadruple x = double (double x)

factorial :: (Num a, Enum a) => a -> a
factorial x = product [1 .. x]

average :: (Fractional a, Foldable t) => t a -> a
average ns = sum ns / fromIntegral (length ns)

polynomial :: Num a => a -> a
polynomial x = let
    y = x + 1
    in y * y

-- sumEvenOdds xs = foldr (+) 0 (map (+ 1) (filter (\x -> x `mod` 2 == 0) xs))
sumEvenOdds :: Integral b => [b] -> b
sumEvenOdds xs = sum (incr (even xs))
    where
        sum xs = foldr (+) 0 xs
        incr xs = map (+ 1) xs
        even xs = filter (\x -> x `mod` 2 == 0) xs