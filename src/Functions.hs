module Functions (double, quadruple, factorial, average) where

double :: Num a => a -> a
double x = x + x

quadruple :: Num a => a -> a
quadruple x = double (double x)

factorial :: (Num a, Enum a) => a -> a
factorial x = product [1 .. x]

average :: (Fractional a, Foldable t) => t a -> a
average ns = sum ns / fromIntegral (length ns)