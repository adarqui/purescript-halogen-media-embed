module Test.Main where


import Data.Either                     (Either(..))
import Data.List                       (List(..))
import Halogen                         (ComponentHTML, HTML)
import Halogen.HTML.Indexed            as H
import Halogen.HTML.Properties.Indexed as P
import Halogen.Themes.Bootstrap3       as B
import Prelude                         (bind, ($), (<$>))
import Test.Unit                       (test)
import Test.Unit.Main                  (runTest)
import Test.Unit.Assert                as Assert



main = runTest do



  test "TODO" do

    Assert.equal 1 1
