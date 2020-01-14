module ButtonsTest exposing (..)

import Expect exposing (Expectation)
import Test exposing (..)
import Buttons exposing (update, Msg)

suite : Test
suite =
    describe "Update function"
    [test "increment does +1" <|
      \_ ->
        1
        |> update Buttons.Increment
        |> Expect.equal 2
      , test "decrement does -1" <|
      \_ ->
        1
        |> update Buttons.Decrement
        |> Expect.equal 0
      ]
