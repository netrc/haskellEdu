


module Triangle where
-- where gives you a module scope

{- where also gives you a local scope for fun vars so you can do more work
   ... of course, still not an ordered list of instructions!!!
-}

type Length = Double
data Triangle = Triangle { a::Length, b::Length, c::Length }
  

areaTriangleTrig  a b c = result   -- use trigonometry
    where
    cosa   = (b ^ 2 + c ^ 2 - a ^ 2) / (2 * b * c)
    sina   = sqrt (1 - cosa ^ 2)
    height = b * sina
    result = c * height / 2

-- Can't "overload" functions?!? But the types are very distinct here !!!

--areaTriangleHeron :: Int -> Int -> Int -> Double
areaTriangleHeron a b c = result           -- use Heron's formula
    where
    result = sqrt (s * (s - a) * (s - b) * (s - c))
    s      = (a + b + c) / 2

areaTriangleHeron1 :: Triangle -> Double
areaTriangleHeron1 t = 3.0


-- Note the above doesn't work if abc are not a triangle - 3 4 9
-- how to make the above work?  use Maybe

