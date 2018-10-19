module Pangram
  ( isPangram
  ) where

import Prelude
import Data.Char.Unicode (isAlpha)
import Data.String.Common (toLower)
import Data.String.CodeUnits (toCharArray)
import Data.List (nub, length, filter, fromFoldable)
import Data.Function ((<<<), ($))

isPangram :: String -> Boolean
isPangram str = length lst >= 26
  where lst = (nub <<< filter isAlpha <<< toList <<< toLower) str
        toList = fromFoldable <<< toCharArray
