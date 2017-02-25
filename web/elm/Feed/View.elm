module Feed.View exposing (..)

import Html exposing (..)
import Html
import Html.Attributes exposing (..)
import Msgs exposing (..)
import Models exposing (..)


view : AppModel -> Html Msg
view model =
    let
        viewFeed feed =
            li [ class "collection-item avatar" ]
                [ span [ class "title" ] [ text feed.name ]
                , p [] [ text feed.url ]
                , a [ class "secondary-content" ] [ text "Edit" ]
                ]
    in
        model.feeds
            |> List.map viewFeed
            |> ul [ class "feed-list collection" ]
