module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool
isLeapYear year
  | isDivisible 400 == 0 = True
  | isDivisible 100 == 0 = False
  | isDivisible 4   == 0 = True
  | otherwise            = False
  where
    isDivisible = rem year