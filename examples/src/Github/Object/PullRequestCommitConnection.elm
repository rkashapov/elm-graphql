module Github.Object.PullRequestCommitConnection exposing (..)

import Github.Object
import Graphqelm.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Builder.Object as Object
import Graphqelm.Encode as Encode exposing (Value)
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


selection : (a -> constructor) -> SelectionSet (a -> constructor) Github.Object.PullRequestCommitConnection
selection constructor =
    Object.object constructor


edges : SelectionSet edges Github.Object.PullRequestCommitEdge -> FieldDecoder (List edges) Github.Object.PullRequestCommitConnection
edges object =
    Object.selectionFieldDecoder "edges" [] object (identity >> Decode.list)


nodes : SelectionSet nodes Github.Object.PullRequestCommit -> FieldDecoder (List nodes) Github.Object.PullRequestCommitConnection
nodes object =
    Object.selectionFieldDecoder "nodes" [] object (identity >> Decode.list)


pageInfo : SelectionSet pageInfo Github.Object.PageInfo -> FieldDecoder pageInfo Github.Object.PullRequestCommitConnection
pageInfo object =
    Object.selectionFieldDecoder "pageInfo" [] object identity


totalCount : FieldDecoder Int Github.Object.PullRequestCommitConnection
totalCount =
    Object.fieldDecoder "totalCount" [] Decode.int
