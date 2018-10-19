module Accumulate
  ( accumulate
  ) where

import Data.List

accumulate :: forall a b. (a -> b) -> List a -> List b
accumulate _ Nil = Nil
accumulate f (Cons x xs) = Cons (f x) (accumulate f xs)
