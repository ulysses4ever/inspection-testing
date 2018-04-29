{-# LANGUAGE TemplateHaskell #-}
{-# OPTIONS_GHC -O -fplugin Test.Inspection.Plugin #-}
module B (rhs) where

import Data.Maybe

rhs :: (a -> b) -> Maybe a -> Bool
rhs f Nothing = True
rhs f (Just _) = False
