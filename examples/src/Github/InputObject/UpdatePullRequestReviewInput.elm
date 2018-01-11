-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.1
-- Target elm package version 6.0.0
-- https://github.com/dillonkearns/graphqelm


module Github.InputObject.UpdatePullRequestReviewInput exposing (..)

import Github.Interface
import Github.Object
import Github.Scalar
import Github.Union
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Encode a UpdatePullRequestReviewInput into a value that can be used as an argument.
-}
encode : UpdatePullRequestReviewInput -> Value
encode input =
    Encode.maybeObject
        [ ( "clientMutationId", Encode.string |> Encode.optional input.clientMutationId ), ( "pullRequestReviewId", (\(Github.Scalar.Id raw) -> Encode.string raw) input.pullRequestReviewId |> Just ), ( "body", Encode.string input.body |> Just ) ]


{-| Type for the UpdatePullRequestReviewInput input object.
-}
type alias UpdatePullRequestReviewInput =
    { clientMutationId : OptionalArgument String, pullRequestReviewId : Github.Scalar.Id, body : String }
