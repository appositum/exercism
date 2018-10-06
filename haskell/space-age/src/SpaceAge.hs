module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

secToYears :: Fractional a => a -> a
secToYears sec = sec / 31557600

ageOn :: Planet -> Float -> Float
ageOn Mercury age = secToYears age / 0.2408467
ageOn Venus   age = secToYears age / 0.61519726
ageOn Earth   age = secToYears age
ageOn Mars    age = secToYears age / 1.8808158
ageOn Jupiter age = secToYears age / 11.862615
ageOn Saturn  age = secToYears age / 29.447498
ageOn Uranus  age = secToYears age / 84.016846
ageOn Neptune age = secToYears age / 164.79132
