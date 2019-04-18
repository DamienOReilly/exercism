module Clock (addDelta, fromHourMin, toString) where

import Text.Printf

type Hour  = Int
type Min   = Int
data Clock = Clock Hour Min deriving Eq

fromHourMin :: Int -> Int -> Clock
fromHourMin hour min = Clock hourNorm minNorm
    where
        (mdiv, minNorm) = divMod min 60
        hourNorm        = (hour + mdiv) `mod` 24

toString :: Clock -> String
toString (Clock h m) = hh ++ ":" ++ mm
    where
        hh = leftPad h
        mm = leftPad m

addDelta :: Int -> Int -> Clock -> Clock
addDelta hour min (Clock h m) = fromHourMin (hour+h) (min+m)

leftPad :: Int -> String
leftPad = printf "%02d"