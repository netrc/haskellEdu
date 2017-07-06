
{-# LANGUAGE DeriveDataTypeable #-}
{-# OPTIONS_GHC -fno-cse #-}

-- ?!?! needs no-cse optimization so args arent processed more than once ?!?!?

module Sample where
import System.Console.CmdArgs


-- beginner: diff between data record type name and constructor

data Opts = OptsMaker {
  hello :: String,
  times :: Integer
} deriving (Show, Data, Typeable)

-- from hackage:  &=  ... add an annotation to this option
opts = OptsMaker {
  hello = def                     -- if not given, default val (def "")
    &= help "World argument" 
    &= opt "world",               -- if just option, this default val
  times = 4
    &= help "num to repeat"
}
  &= summary "Sample v1"

main = 
  print =<< cmdArgs opts
