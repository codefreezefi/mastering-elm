module Buttons exposing (..)

import Browser
import Html exposing (Html, button, div, input, p, text)
import Html.Attributes exposing (type_)
import Html.Events exposing (onClick, onInput)

-- MAIN
main =
  Browser.sandbox { init = init, update = update, view = view }

-- MODEL
type alias Model = Int
init : Model
init =
  0

-- UPDATE
type Msg
  = Increment
  | Decrement
  | Set String

update : Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

    Set x ->
        case (String.toInt x) of
            Just a ->
                a
            Nothing ->
                0

-- VIEW
view : Model -> Html Msg
view model =
  div []
    [ text "Please input your start value"
    , div [] [ input [ type_ "number", onInput (\value -> Set ( value)) ] [] ]
    , p [] [ button [ onClick Decrement ] [ text "-" ]
            , div [] [ text (String.fromInt model) ]
            , button [ onClick Increment ] [ text "+" ]]
    ]