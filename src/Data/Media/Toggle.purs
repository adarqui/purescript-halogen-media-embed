module Data.Media.Toggle (
  Toggle(..),
  toggle
) where



import Data.Maybe                      (Maybe(..))
import Halogen                         (ComponentHTML, HTML)
import Halogen.HTML.Indexed            as H
import Halogen.HTML.Core               (class IsProp, toPropString)
import Halogen.HTML.Core               as Core
import Halogen.HTML.Properties         as Properties
import Halogen.HTML.Properties.Indexed as P
import Halogen.HTML.CSS.Indexed        as CSS
import CSS.Font                        as CSS
import CSS.Size                        as CSS
import CSS.Text                        as CSS
import CSS.TextAlign                   as CSS
import Halogen.Themes.Bootstrap3       as B
import Prelude                         ( class Eq, eq
                                       , class Show, show
                                       , class Bounded, bottom, top
                                       , class BooleanAlgebra, not, disj, conj
                                       , id, map, ($), (<>))


--
-- class IsProp a where
--  toPropString :: AttrName -> PropName a -> a -> String


data Toggle
  = Zero
  | One

instance toggleEq :: Eq Toggle where
  eq Zero Zero = true
  eq One  One  = true
  eq _    _    = false

instance toggleShow :: Show Toggle where
  show Zero = "0"
  show One  = "1"

instance toggleBounded :: Bounded Toggle where
  bottom = Zero
  top    = One

instance toggleBooleanAlgebra :: BooleanAlgebra Toggle where
  not Zero = One
  not One  = Zero

  disj Zero One  = One
  disj One  Zero = One
  disj _    _    = Zero

  conj Zero Zero  = One
  conj One  One   = One
  conj _    _     = Zero

instance toggleIsProp :: IsProp Toggle where
  toPropString name _ toggle = show toggle

toggle :: Toggle -> Toggle
toggle = not
