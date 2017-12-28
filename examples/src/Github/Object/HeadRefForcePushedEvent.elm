module Github.Object.HeadRefForcePushedEvent exposing (..)

import Github.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.HeadRefForcePushedEvent
selection constructor =
    Object.object constructor


actor : SelectionSet actor Github.Object.Actor -> FieldDecoder actor Github.Object.HeadRefForcePushedEvent
actor object =
    Object.selectionFieldDecoder "actor" [] object identity


afterCommit : SelectionSet afterCommit Github.Object.Commit -> FieldDecoder afterCommit Github.Object.HeadRefForcePushedEvent
afterCommit object =
    Object.selectionFieldDecoder "afterCommit" [] object identity


beforeCommit : SelectionSet beforeCommit Github.Object.Commit -> FieldDecoder beforeCommit Github.Object.HeadRefForcePushedEvent
beforeCommit object =
    Object.selectionFieldDecoder "beforeCommit" [] object identity


createdAt : FieldDecoder String Github.Object.HeadRefForcePushedEvent
createdAt =
    Object.fieldDecoder "createdAt" [] Decode.string


id : FieldDecoder String Github.Object.HeadRefForcePushedEvent
id =
    Object.fieldDecoder "id" [] Decode.string


pullRequest : SelectionSet pullRequest Github.Object.PullRequest -> FieldDecoder pullRequest Github.Object.HeadRefForcePushedEvent
pullRequest object =
    Object.selectionFieldDecoder "pullRequest" [] object identity


ref : SelectionSet ref Github.Object.Ref -> FieldDecoder ref Github.Object.HeadRefForcePushedEvent
ref object =
    Object.selectionFieldDecoder "ref" [] object identity
