
satisfaceGoldbach :: Integer -> Bool -- takes a natural number n and returns True if and only if n is even, greater than 2, and the sum of two prime numbers, or False otherwise.
satisfaceGoldbach n | n <= 2 = False 
                    | n `mod` 2 == 1 = False 
                    | otherwise = esPrimoNMenosPrimo n 1

verificarConjeturaHasta :: Integer -> Bool -- takes a natural number `n` greater than 2 and returns `True` if and only if the conjecture is true for all even natural numbers greater than 2 and less than or equal to `n`, or `False` otherwise.
verificarConjeturaHasta n | n == 4 = True 
                          | otherwise = satisfaceGoldbach n && verificarConjeturaHasta (n - 2) 

descomposicionEnPrimos :: Integer -> (Integer,Integer) -- takes a natural number `n` greater than 2 and returns an ordered pair `(a,b)` of prime numbers such that `a + b == n`.
descomposicionEnPrimos n = descomposicionEnPrimosDesde n 1

numeroDeDescomposiciones :: Integer -> Integer -- takes a natural number `n` greater than 2 and returns the number of ordered pairs `(a, b)` of prime numbers such that `a + b == n`.
numeroDeDescomposiciones n = numeroDeDescomposicionesDesde n 1

------------Aux-------------

divideA :: Integer -> Integer -> Bool
divideA d a = mod a d == 0

menorDivisorDesde :: Integer -> Integer -> Integer -- Returns the smallest divisor for `n` starting the search from `k`.
menorDivisorDesde n k | n < k = 0
                      | k `divideA` n = k
                      | otherwise = menorDivisorDesde n (k + 1)

menorDivisor :: Integer -> Integer -- Returns the smallest divisor for `n`, excluding 1.
menorDivisor n = menorDivisorDesde n 2

esPrimo :: Integer -> Bool -- Prime?
esPrimo 1 = False 
esPrimo n | menorDivisor n == n = True
          | otherwise = False

nEsimoPrimo :: Integer -> Integer -- Given `n`, returns the nth prime number.
nEsimoPrimo 1 = 2
nEsimoPrimo n = menorPrimoDesde (1 + nEsimoPrimo (n - 1))

menorPrimoDesde :: Integer -> Integer -- Returns the smallest prime number, starting the search from `n`.
menorPrimoDesde n | esPrimo n = n
                  | otherwise = menorPrimoDesde (n + 1)

esPrimoNMenosPrimo :: Integer -> Integer -> Bool -- Determines if `n` subtracted from any prime number located from the i th position results in another prime number.
esPrimoNMenosPrimo n i = esPrimo (n - nEsimoPrimo i) || esPrimoNMenosPrimo n (i + 1)

descomposicionEnPrimosDesde :: Integer -> Integer -> (Integer, Integer) --Searches if `n` minus the ith prime number is prime, and returns the ordered pair of prime numbers that sum up to `n`.
descomposicionEnPrimosDesde n i | esPrimo (n - nEsimoPrimo i) = (nEsimoPrimo i, n - nEsimoPrimo i)
                                | otherwise = descomposicionEnPrimosDesde n (i+1) 

numeroDeDescomposicionesDesde :: Integer -> Integer -> Integer
numeroDeDescomposicionesDesde n i | (n - nEsimoPrimo i) <= 1 = 0 
                                  | esPrimo (n - nEsimoPrimo i) = 1 + numeroDeDescomposicionesDesde n (i+1) 
                                  | otherwise = numeroDeDescomposicionesDesde n (i+1) 