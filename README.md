# Goldbach's Conjecture
>(Or How to Make a Million Dollars)

## Overview
The Goldbach's Conjecture is one of the oldest unsolved problems in number theory. Proposed by Christian Goldbach in a letter to Euler in 1742, it suggests that every even integer greater than 2 can be expressed as the sum of two prime numbers. Despite numerous attempts by mathematicians over the centuries, a proof for this conjecture remains elusive.

In this project, we propose to write Haskell functions to test the conjecture, and who knows, maybe from there a proof will emerge that allows us to become millionaires.

## Table of Contents
- [Introduction](#introduction)
- [About the Conjecture](#about-the-conjecture)
- [Repository Structure](#repository-structure)
- [Usage](#usage)
- [Documentation](#documentation)
- [License](#license)

## Introduction
The Goldbach's Conjecture has fascinated mathematicians for centuries due to its simplicity and potential implications for prime number theory.
In the year 2000, in order to generate publicity for the book "Uncle Petros and Goldbach's Conjecture" by Apostolos Doxiadis, the British publisher Tony Faber offered a prize of one million dollars to whoever proved the conjecture. Nobody has claimed the prize yet...
## About the Conjecture
Goldbach's Conjecture states that every even integer greater than 2 can be expressed as the sum of two prime numbers. In mathematical terms, if `n` is an even integer `> 2`, then there exist primes `p` and `q` such that `n = p + q`. Despite extensive computational verification for large numbers, a rigorous proof remains elusive.

## Usage
To use the code in this repository, simply clone the repository to your local machine and explore the contents.

## Documentation
`satisfaceGoldbach :: Integer -> Bool`
>Takes a natural number `n` and returns `True` if and only if `n` is even, greater than 2, and the sum of two prime numbers, or `False` otherwise.

`verificarConjeturaHasta :: Integer -> Bool`
>Takes a natural number `n` greater than 2 and returns `True` if and only if the conjecture is true for all even natural numbers greater than 2 and less than or equal to `n`, or `False` otherwise.

`descomposicionEnPrimos :: Integer -> (Integer,Integer)`
>Takes a natural number `n` greater than 2 and returns an ordered pair `(a,b)` of prime numbers such that `a + b == n`.

`numeroDeDescomposiciones :: Integer -> Integer`
>Takes a natural number `n` greater than 2 and returns the number of ordered pairs `(a, b)` of prime numbers such that `a + b == n`.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
