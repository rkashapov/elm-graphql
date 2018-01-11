-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.1
-- Target elm package version 6.0.0
-- https://github.com/dillonkearns/graphqelm


module Github.Enum.StarOrderField exposing (..)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which star connections can be ordered.

  - StarredAt - Allows ordering a list of stars by when they were created.

-}
type StarOrderField
    = StarredAt


decoder : Decoder StarOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "STARRED_AT" ->
                        Decode.succeed StarredAt

                    _ ->
                        Decode.fail ("Invalid StarOrderField type, " ++ string ++ " try re-running the graphqelm CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : StarOrderField -> String
toString enum =
    case enum of
        StarredAt ->
            "STARRED_AT"
