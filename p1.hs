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

silenceMaybe :: (Show a) => Maybe a -> String
silenceMaybe Nothing  = ""
silenceMaybe (Just a) = show a

main :: IO ()
main = do
  print . myLast $ ([] :: String)
  print $ myLast [1 .. 10]
  print $ myLast [()]
  putStrLn . silenceMaybe . myLast $ ([] :: String)
  putStrLn . silenceMaybe . myLast $ [1 .. 10]
  putStrLn . silenceMaybe . myLast $ [()]
