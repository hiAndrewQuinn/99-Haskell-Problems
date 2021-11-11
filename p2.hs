-- Problem 2

-- (*) Find the last but one element of a list.

-- (Note that the Lisp transcription of this problem is incorrect.)

-- Example in Haskell:

--  myButLast [1,2,3,4]
-- 3
--  myButLast ['a'..'z']
-- 'y'

module Problem2 where

silenceMaybe :: (Show a) => Maybe a -> String
silenceMaybe Nothing  = ""
silenceMaybe (Just a) = show a


myButLast :: [a] -> Maybe a
myButLast []       = Nothing
myButLast [x]      = Nothing
myButLast [x, _]   = Just x
myButLast (_ : xs) = myButLast xs

-- To run:
-- stack ghci
-- > :l p2 p1
-- > main

main :: IO ()
main = do
  print . myButLast $ ([] :: String)
  print $ myButLast [1 .. 10]
  print $ myButLast [()]
  putStrLn . silenceMaybe . myButLast $ ([] :: String)
  putStrLn . silenceMaybe . myButLast $ [1 .. 10]
  putStrLn . silenceMaybe . myButLast $ [()]
  print "Problem 2 done!"
