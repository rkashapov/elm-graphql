module Github.Object.AddProjectCardPayload exposing (..)

import Github.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.AddProjectCardPayload
selection constructor =
    Object.object constructor


cardEdge : SelectionSet cardEdge Github.Object.ProjectCardEdge -> FieldDecoder cardEdge Github.Object.AddProjectCardPayload
cardEdge object =
    Object.selectionFieldDecoder "cardEdge" [] object identity


clientMutationId : FieldDecoder String Github.Object.AddProjectCardPayload
clientMutationId =
    Object.fieldDecoder "clientMutationId" [] Decode.string


projectColumn : SelectionSet projectColumn Github.Object.Project -> FieldDecoder projectColumn Github.Object.AddProjectCardPayload
projectColumn object =
    Object.selectionFieldDecoder "projectColumn" [] object identity
