{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -O -fplugin Test.Inspection.Plugin #-}
module Simple (main) where

import Test.Inspection
import Data.Maybe
import A (lhs)
import B (rhs)

inspect $ 'lhs === 'rhs

main :: IO ()
main = return ()
