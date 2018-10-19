module HelloWorld where

import Prelude ((<>))
import Data.Maybe (Maybe(..))

helloWorld :: Maybe String -> String
helloWorld Nothing = "Hello, World!"
helloWorld (Just name) = "Hello, " <> name <> "!"
