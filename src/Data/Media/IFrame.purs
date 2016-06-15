module Data.Media.IFrame (
  test,
  allowFullScreen,
  frameBoarder,
  height,
  width
) where



import Data.Maybe                      (Maybe(..))
import Halogen                         (ComponentHTML, HTML)
import Halogen.HTML.Indexed            as H
import Halogen.HTML.Indexed            as HI
import Halogen.HTML.Core               as Core
import Halogen.HTML.Properties         as P
import Halogen.HTML.Properties.Indexed as PI
import Halogen.HTML.CSS.Indexed        as CSS
import Halogen.HTML.CSS.Indexed        as CSSI
import CSS.Font                        as CSS
import CSS.Size                        as CSS
import CSS.Text                        as CSS
import CSS.TextAlign                   as CSS
import Halogen.Themes.Bootstrap3       as B
import Prelude                         (id, show, map, ($), (<>))

import Data.Media.Toggle               (Toggle)



test :: forall i. String -> Core.Prop i
test = Core.prop (Core.propName "test") (Just $ Core.attrName "test")



allowFullScreen :: forall i. Toggle -> Core.Prop i
allowFullScreen = Core.prop (Core.propName "allowfullscreen") (Just $ Core.attrName "allowfullscreen")



frameBoarder :: forall i. Toggle -> Core.Prop i
frameBoarder = Core.prop (Core.propName "frameboarder") (Just $ Core.attrName "frameboarder")



height :: forall i. P.LengthLiteral -> Core.Prop i
height = P.height



width :: forall i. P.LengthLiteral -> Core.Prop i
width = P.width
