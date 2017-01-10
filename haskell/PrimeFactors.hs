module PrimeFactors (primeFactors) where

-- primeFactors :: Integer -> [Integer]
-- primeFactors x = []

-- primeFactors :: Integer -> [Integer]
-- primeFactors 1 = []
-- primeFactors 2 = [2]
-- primeFactors 3 = [3]
-- primeFactors 4 = [2, 2]
-- primeFactors 5 = [5]
-- primeFactors 6 = [2, 3]
-- primeFactors 7 = [7]
-- primeFactors 8 = [2, 2, 2]
-- primeFactors 9 = [3, 3]
-- primeFactors x = [x]

-- -- infix notation
-- primeFactors :: Integer -> [Integer]
-- primeFactors x =
-- 	if x `mod` 2 == 0
-- 		then [2]
-- 		else if x `mod` 3 == 0
-- 			then [3]
-- 			else []

-- -- prefix notation
-- primeFactors :: Integer -> [Integer]
-- primeFactors x =
-- 	if (mod) x 2 == 0
-- 		then [2]
-- 		else if (mod) x 3 == 0
-- 			then [3]
-- 			else []

-- -- prefix notation
-- primeFactors :: Integer -> [Integer]
-- primeFactors 1 = []
-- primeFactors x
-- 	| ((mod) x 2 == 0) && (x > 2) = [2, (div) x 2]
-- 	| otherwise = [x]

-- -- infix notation
-- primeFactors :: Integer -> [Integer]
-- primeFactors 1 = []
-- primeFactors x
-- 	| (x `mod` 2 == 0) && (x > 2) = [2, x `div` 2]
-- 	| otherwise = [x]

primeFactors :: Integer -> [Integer]
primeFactors x = primeFactors' x 2
	where primeFactors' x c
			| x < c = []
			| x `mod` c == 0 = [c] ++ primeFactors' (x `div` c) c
			| otherwise = primeFactors' x (c + 1)
