-- Do not manually edit this file, it was auto-generated by Graphqelm
-- npm package version 2.0.1
-- Target elm package version 6.0.0
-- https://github.com/dillonkearns/graphqelm


module Github.Union.IssueOrPullRequest exposing (..)

import Github.Interface
import Github.Object
import Github.Union
import Graphqelm.FieldDecoder as FieldDecoder exposing (FieldDecoder)
import Graphqelm.Internal.Builder.Argument as Argument exposing (Argument)
import Graphqelm.Internal.Builder.Object as Object
import Graphqelm.Internal.Encode as Encode exposing (Value)
import Graphqelm.OptionalArgument exposing (OptionalArgument(Absent))
import Graphqelm.SelectionSet exposing (FragmentSelectionSet(FragmentSelectionSet), SelectionSet(SelectionSet))
import Json.Decode as Decode


selection : (Maybe typeSpecific -> constructor) -> List (FragmentSelectionSet typeSpecific Github.Union.IssueOrPullRequest) -> SelectionSet constructor Github.Union.IssueOrPullRequest
selection constructor typeSpecificDecoders =
    Object.unionSelection typeSpecificDecoders constructor


onIssue : SelectionSet selection Github.Object.Issue -> FragmentSelectionSet selection Github.Union.IssueOrPullRequest
onIssue (SelectionSet fields decoder) =
    FragmentSelectionSet "Issue" fields decoder


onPullRequest : SelectionSet selection Github.Object.PullRequest -> FragmentSelectionSet selection Github.Union.IssueOrPullRequest
onPullRequest (SelectionSet fields decoder) =
    FragmentSelectionSet "PullRequest" fields decoder
