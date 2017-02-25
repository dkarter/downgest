module Feed.Models exposing (..)

import Json.Decode as Decode exposing (field)
import Json.Encode as Encode


-- Model Declaration


type alias Feed =
    { name : String
    , url : String
    }



-- New Model


new : Feed
new =
    { name = ""
    , url = ""
    }



-- JSON Decoder


feedDecoder : Decode.Decoder Feed
feedDecoder =
    Decode.map2 Feed
        (field "name" Decode.string)
        (field "url" Decode.string)



-- JSON Encoder


feedEncoded : Feed -> Encode.Value
feedEncoded model =
    Encode.object
        [ ( "name", Encode.string model.name )
        , ( "url", Encode.string model.url )
        ]
