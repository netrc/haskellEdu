
{-# LANGUAGE DeriveDataTypeable #-}
{-# OPTIONS_GHC -fno-cse #-}
module Sample where
import System.Console.CmdArgs


data Opts = Opts {
    hello :: String
} deriving (Show, Data, Typeable)

sample = Opts {
    hello = def 
    &= help "World argument" 
    &= opt "world"
}
    &= summary "Sample v1"

main = print =<< cmdArgs sample
