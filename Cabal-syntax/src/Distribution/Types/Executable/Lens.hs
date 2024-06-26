{-# LANGUAGE DataKinds #-}

module Distribution.Types.Executable.Lens
  ( Executable
  , module Distribution.Types.Executable.Lens
  ) where

import Distribution.Compat.Lens
import Distribution.Compat.Prelude
import Prelude ()

import Distribution.Types.BuildInfo (BuildInfo)
import Distribution.Types.Executable (Executable)
import Distribution.Types.ExecutableScope (ExecutableScope)
import Distribution.Types.UnqualComponentName (UnqualComponentName)
import Distribution.Utils.Path

import qualified Distribution.Types.Executable as T

exeName :: Lens' Executable UnqualComponentName
exeName f s = fmap (\x -> s{T.exeName = x}) (f (T.exeName s))
{-# INLINE exeName #-}

modulePath :: Lens' Executable (RelativePath Source File)
modulePath f s = fmap (\x -> s{T.modulePath = x}) (f (T.modulePath s))
{-# INLINE modulePath #-}

exeScope :: Lens' Executable ExecutableScope
exeScope f s = fmap (\x -> s{T.exeScope = x}) (f (T.exeScope s))
{-# INLINE exeScope #-}

exeBuildInfo :: Lens' Executable BuildInfo
exeBuildInfo f s = fmap (\x -> s{T.buildInfo = x}) (f (T.buildInfo s))
{-# INLINE exeBuildInfo #-}
