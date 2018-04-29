{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -O -fplugin Test.Inspection.Plugin #-}
module A (lhs) where

import Test.Inspection
import Data.Maybe

lhs :: (a -> b) -> Maybe a -> Bool
lhs f x = isNothing (fmap f x)
