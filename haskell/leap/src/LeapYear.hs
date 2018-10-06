module LeapYear (isLeapYear) where

divisible :: Integer -> Integer -> Bool
divisible x y = x `mod` y == 0

isLeapYear :: Integer -> Bool
isLeapYear year =
  divisible year 4 && not (divisible year 100)
  || divisible year 100 && divisible year 400
