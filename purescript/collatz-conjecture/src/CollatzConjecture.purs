module CollatzConjecture
  ( collatz
  ) where

import Prelude
import Data.Int
import Data.Maybe

collatz :: Int -> Maybe Int
collatz n
  | n <= 0 = Nothing
  | otherwise = Just $ collatz' 0 n

collatz' :: Int -> Int -> Int
collatz' acc 1 = acc
collatz' acc n
  | even n = collatz' (acc+1) (n `div` 2)
  | otherwise = collatz' (acc+1) (3*n + 1)
