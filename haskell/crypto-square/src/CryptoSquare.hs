module CryptoSquare (encode) where

import Data.Char
import Data.List
import Data.List.Split

encode :: String -> String
encode a = encoded
    where parsed  = trim a
          rowLen  = ceiling . sqrt . fromIntegral $ length parsed
          encoded = unwords . transpose $ chunksOf rowLen parsed 

trim :: String -> String
trim []       = []
trim (x:xs)   = case isAlphaNum x of True  -> toLower x : trim xs
                                     False -> trim xs