module Luhn (isValid) where

import Data.Char

isValid :: String -> Bool
isValid x =  length cleaned > 1 && onlyNumeric cleaned && checkZero cleaned
        where cleaned = trim x

checkZero :: String -> Bool
checkZero x = (sumDigits . doubleDigits) x `rem` 10 == 0

onlyNumeric :: String -> Bool 
onlyNumeric xs = all isDigit xs

doubleDigits :: String -> String
doubleDigits a = map (\(chr, idx) -> if idx `rem` 2 == 0 then doubleDigit chr else chr) $ zip reversed [1..]
    where 
        reversed = reverse a

sumDigits :: String -> Int
sumDigits = sum . map digitToInt

doubleDigit :: Char -> Char
doubleDigit a = go 
    where
        go = intToDigit newDigit
        newDigit = case (double > 9) of True  -> double - 9
                                        False -> double
        double = (*) 2 $ digitToInt a

trim :: String -> String
trim []       = []
trim (x:xs)   = case isAlphaNum x of True  -> toLower x : trim xs
                                     False -> trim xs