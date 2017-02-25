module Models exposing (..)

import Feed.Models exposing (Feed)

type alias AppModel =
    { feeds: List Feed }


initialModel : AppModel
initialModel =
    {
      feeds = [
        Feed "test" "test.example.com"
      ]
    }
