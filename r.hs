

{- where gives you a local scope for fun vars so you can do more work
   ... of course, still not an ordered list of instructions!!!
-}

currYear = 2017
endYear = currYear + 30

years = [ currYear..endYear ]

initVal = 1000
eqIRR = 1.06



-- formatting for output

printElements :: [Int] -> IO()
printElements = mapM_ print


main = do
  print "hello"
  print "world"
  printElements years
