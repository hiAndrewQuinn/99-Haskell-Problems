-- Problem 1

-- (*) Find the last element of a list.

-- (Note that the Lisp transcription of this problem is incorrect.)

-- Example in Haskell:

-- λ> myLast [1,2,3,4]
-- 4
-- λ> myLast ['x','y','z']
-- 'z'

module Problem1 where

myLast :: [a] -> Maybe a
myLast []       = Nothing
myLast (x : []) = Just x
myLast (_ : xs) = myLast xs

