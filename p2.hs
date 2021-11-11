-- Problem 2

-- (*) Find the last but one element of a list.

-- (Note that the Lisp transcription of this problem is incorrect.)

-- Example in Haskell:

-- λ> myButLast [1,2,3,4]
-- 3
-- λ> myButLast ['a'..'z']
-- 'y'

module Problem2 where

import qualified Problem1

myButLast :: [a] -> Maybe a
myButLast (x : _ : []) = Just x
myButLast xs           = Problem1.myLast xs
