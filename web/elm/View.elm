module View exposing (..)

import Html exposing (..)
import Html
import Html.Attributes exposing (..)
import Msgs exposing (..)
import Models exposing (..)
import Feed.View


view : AppModel -> Html Msg
view model =
    div []
        [ Feed.View.view (model) ]
