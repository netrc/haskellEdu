

import Triangle


main = do
  print "hello"
  print (areaTriangleTrig 3 4 5)
  print "world"
  print (areaTriangleHeron 3 4 5)
  print "making triangles"
  let t1 = Triangle 3.0 4.0 5.0
  print "done//last statement in do block must be expression"
