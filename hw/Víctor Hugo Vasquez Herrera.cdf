(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.3' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[    614290,      12651]
NotebookOptionsPosition[    611213,      12581]
NotebookOutlinePosition[    611665,      12601]
CellTagsIndexPosition[    611622,      12598]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 RowBox[{"ClearAll", "[", "\"\<Global`*\>\"", "]"}], "\[IndentingNewLine]", 
 RowBox[{"SetOptions", "[", 
  RowBox[{"$FrontEndSession", ",", 
   RowBox[{"NotebookAutoSave", "\[Rule]", "True"}]}], "]"}], "\n", 
 RowBox[{"NotebookSave", "[", "]"}]}], "Input",ExpressionUUID->"74641a7c-1c51-\
4b93-9d69-9b88efaf457e"],

Cell[CellGroupData[{

Cell["Importaci\[OAcute]n de datos", "Section",ExpressionUUID->"838928fe-617b-4994-ae25-b72e537ddb02"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"dataPath", "=", 
  RowBox[{"FileNameJoin", "[", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"NotebookDirectory", "[", "]"}], ",", "\"\<StormEvents\>\""}], 
    "}"}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"dataFiles", "=", 
  RowBox[{"FileNames", "[", 
   RowBox[{"\"\<*.csv\>\"", ",", "dataPath"}], "]"}]}]}], "Input",ExpressionUU\
ID->"1e89ea61-77ba-4517-95e2-e85c8de91ccc"],

Cell[BoxData["\<\"C:\\\\Users\\\\V_HVH\\\\OneDrive\\\\Escritorio\\\\CURSO\\\\\
StormEvents\"\>"], "Output",ExpressionUUID->"4dd5bf0c-e0bb-4f9d-a6e9-\
bf7bc5cd2505"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"C:\\\\Users\\\\V_HVH\\\\OneDrive\\\\Escritorio\\\\CURSO\\\\\
StormEvents\\\\StormEvents_2010.csv\"\>", 
   ",", "\<\"C:\\\\Users\\\\V_HVH\\\\OneDrive\\\\Escritorio\\\\CURSO\\\\\
StormEvents\\\\StormEvents_2011.csv\"\>", 
   ",", "\<\"C:\\\\Users\\\\V_HVH\\\\OneDrive\\\\Escritorio\\\\CURSO\\\\\
StormEvents\\\\StormEvents_2012.csv\"\>", 
   ",", "\<\"C:\\\\Users\\\\V_HVH\\\\OneDrive\\\\Escritorio\\\\CURSO\\\\\
StormEvents\\\\StormEvents_2013.csv\"\>", 
   ",", "\<\"C:\\\\Users\\\\V_HVH\\\\OneDrive\\\\Escritorio\\\\CURSO\\\\\
StormEvents\\\\StormEvents_2014.csv\"\>", 
   ",", "\<\"C:\\\\Users\\\\V_HVH\\\\OneDrive\\\\Escritorio\\\\CURSO\\\\\
StormEvents\\\\StormEvents_2015.csv\"\>", 
   ",", "\<\"C:\\\\Users\\\\V_HVH\\\\OneDrive\\\\Escritorio\\\\CURSO\\\\\
StormEvents\\\\StormEvents_2016.csv\"\>", 
   ",", "\<\"C:\\\\Users\\\\V_HVH\\\\OneDrive\\\\Escritorio\\\\CURSO\\\\\
StormEvents\\\\StormEvents_2017.csv\"\>", 
   ",", "\<\"C:\\\\Users\\\\V_HVH\\\\OneDrive\\\\Escritorio\\\\CURSO\\\\\
StormEvents\\\\StormEvents_2017_finalProject.csv\"\>", 
   ",", "\<\"C:\\\\Users\\\\V_HVH\\\\OneDrive\\\\Escritorio\\\\CURSO\\\\\
StormEvents\\\\StormEvents_2018.csv\"\>"}], "}"}]], "Output",ExpressionUUID->\
"235ec4ab-3cfd-4061-94c4-8ebc827035d4"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"stoe", "=", " ", 
   RowBox[{"Import", "[", 
    RowBox[{"dataFiles", "[", 
     RowBox[{"[", "10", "]"}], "]"}], "]"}]}], ";"}]], "Input",ExpressionUUID-\
>"683143b0-48cc-4fb0-aa2d-0c19f9d4fa00"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"datas", "=", 
  RowBox[{"Dataset", "[", 
   RowBox[{"Map", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Association", "[", 
       RowBox[{"Thread", "[", 
        RowBox[{
         RowBox[{"First", "[", "stoe", "]"}], "\[Rule]", "#"}], "]"}], "]"}], 
      "&"}], ",", 
     RowBox[{"Drop", "[", 
      RowBox[{"stoe", ",", "1"}], "]"}]}], "]"}], "]"}]}]], "Input",Expression\
UUID->"f01a2927-5d1a-41a1-817e-2e2497e29cd8"],

Cell[BoxData[
 TemplateBox[{TagBox[
    DynamicModuleBox[{
     TypeSystem`NestedGrid`PackagePrivate`$state$$ = 
      Data`UnorderedAssociation[
       "RowCount" -> 20, "Length" -> 61742, "InitialType" -> TypeSystem`Vector[
          
          TypeSystem`Struct[{
           "EpisodeID", "Event_ID", "State", "Year", "Month", "Event_Type", 
            "Begin_Date_Time", "Timezone", "End_Date_Time", "Injuries_Direct",
             "Injuries_Indirect", "Deaths_Direct", "Deaths_Indirect", 
            "Damage_Property", "Property_Cost", "Damage_Crops", "Crop_Cost", 
            "Begin_Lat", "Begin_Lon", "End_Lat", "End_Lon", 
            "Episode_Narrative", "Event_Narrative"}, {
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[String], TypeSystem`AnyType, 
            TypeSystem`Atom[String], TypeSystem`AnyType, TypeSystem`AnyType, 
            TypeSystem`AnyType, TypeSystem`AnyType, TypeSystem`AnyType, 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String]}], 61742], "Shape" -> 
        TypeSystem`PackageScope`HeaderShape[
          
          Association[{All, "EpisodeID"} -> 1, {All, "Event_ID"} -> 
           1, {All, "State"} -> 1, {All, "Year"} -> 1, {All, "Month"} -> 
           1, {All, "Event_Type"} -> 1, {All, "Begin_Date_Time"} -> 
           1, {All, "Timezone"} -> 1, {All, "End_Date_Time"} -> 
           1, {All, "Injuries_Direct"} -> 1, {All, "Injuries_Indirect"} -> 
           1, {All, "Deaths_Direct"} -> 1, {All, "Deaths_Indirect"} -> 
           1, {All, "Damage_Property"} -> 1, {All, "Property_Cost"} -> 
           1, {All, "Damage_Crops"} -> 1, {All, "Crop_Cost"} -> 
           1, {All, "Begin_Lat"} -> 1, {All, "Begin_Lon"} -> 
           1, {All, "End_Lat"} -> 1, {All, "End_Lon"} -> 
           1, {All, "Episode_Narrative"} -> 1, {All, "Event_Narrative"} -> 1], 
          TypeSystem`PackageScope`Limited[
           TypeSystem`PackageScope`ColumnShape[
            TypeSystem`PackageScope`RowShape[
             Association[
             "EpisodeID" -> TypeSystem`PackageScope`AtomShape[34], "Event_ID" -> 
              TypeSystem`PackageScope`AtomShape[34], "State" -> 
              TypeSystem`PackageScope`AtomShape[115.20000000000002`], "Year" -> 
              TypeSystem`PackageScope`AtomShape[34], "Month" -> 
              TypeSystem`PackageScope`AtomShape[86.4], "Event_Type" -> 
              TypeSystem`PackageScope`AtomShape[220.80000000000004`], 
              "Begin_Date_Time" -> 
              TypeSystem`PackageScope`AtomShape[182.40000000000003`], 
              "Timezone" -> 
              TypeSystem`PackageScope`AtomShape[48.00000000000001], 
              "End_Date_Time" -> 
              TypeSystem`PackageScope`AtomShape[182.40000000000003`], 
              "Injuries_Direct" -> TypeSystem`PackageScope`AtomShape[34], 
              "Injuries_Indirect" -> TypeSystem`PackageScope`AtomShape[34], 
              "Deaths_Direct" -> TypeSystem`PackageScope`AtomShape[34], 
              "Deaths_Indirect" -> TypeSystem`PackageScope`AtomShape[34], 
              "Damage_Property" -> 
              TypeSystem`PackageScope`AtomShape[48.00000000000001], 
              "Property_Cost" -> TypeSystem`PackageScope`UnknownShape, 
              "Damage_Crops" -> 
              TypeSystem`PackageScope`AtomShape[48.00000000000001], 
              "Crop_Cost" -> TypeSystem`PackageScope`UnknownShape, 
              "Begin_Lat" -> TypeSystem`PackageScope`UnknownShape, 
              "Begin_Lon" -> TypeSystem`PackageScope`UnknownShape, "End_Lat" -> 
              TypeSystem`PackageScope`UnknownShape, "End_Lon" -> 
              TypeSystem`PackageScope`UnknownShape, "Episode_Narrative" -> 
              TypeSystem`PackageScope`AtomShape[480.00000000000006`], 
              "Event_Narrative" -> 
              TypeSystem`PackageScope`AtomShape[480.00000000000006`]]]], 
           20, {}]], "InitialData" -> 
        TypeSystem`PackageScope`CacheHandle[84840447], "Type" -> 
        TypeSystem`Vector[
          
          TypeSystem`Struct[{
           "EpisodeID", "Event_ID", "State", "Year", "Month", "Event_Type", 
            "Begin_Date_Time", "Timezone", "End_Date_Time", "Injuries_Direct",
             "Injuries_Indirect", "Deaths_Direct", "Deaths_Indirect", 
            "Damage_Property", "Property_Cost", "Damage_Crops", "Crop_Cost", 
            "Begin_Lat", "Begin_Lon", "End_Lat", "End_Lon", 
            "Episode_Narrative", "Event_Narrative"}, {
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[String], TypeSystem`AnyType, 
            TypeSystem`Atom[String], TypeSystem`AnyType, TypeSystem`AnyType, 
            TypeSystem`AnyType, TypeSystem`AnyType, TypeSystem`AnyType, 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String]}], 61742], "HandleQ" -> True, "RowTarget" -> 
        20, "Data" -> TypeSystem`PackageScope`CacheHandle[84840447]], 
      TypeSystem`NestedGrid`PackagePrivate`$path$$ = {}, 
      TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 1, 
      TypeSystem`NestedGrid`PackagePrivate`$grid$$ = 
      DynamicModule[{
        TypeSystem`NestedGrid`PackagePrivate`renderedGrid = Deploy[
           Style[
            Grid[{{
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"EpisodeID\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"EpisodeID\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "EpisodeID"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "EpisodeID"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox["\"Event_ID\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Event_ID\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Event_ID"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Event_ID"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox["\"State\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"State\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "State"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "State"]], "Mouse"], Background -> 
                GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox["\"Year\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Year\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Year"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Year"]], "Mouse"], Background -> 
                GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox["\"Month\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Month\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Month"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Month"]], "Mouse"], Background -> 
                GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Event_Type\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Event_Type\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Event_Type"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Event_Type"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Begin_Date_Time\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Begin_Date_Time\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Begin_Date_Time"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Begin_Date_Time"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox["\"Timezone\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Timezone\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Timezone"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Timezone"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"End_Date_Time\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"End_Date_Time\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "End_Date_Time"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "End_Date_Time"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Injuries_Direct\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Injuries_Direct\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Injuries_Direct"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Injuries_Direct"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Injuries_Indirect\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Injuries_Indirect\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Injuries_Indirect"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Injuries_Indirect"]], "Mouse"],
                 Background -> GrayLevel[0.95], 
                Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Deaths_Direct\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Deaths_Direct\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Deaths_Direct"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Deaths_Direct"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Deaths_Indirect\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Deaths_Indirect\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Deaths_Indirect"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Deaths_Indirect"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Damage_Property\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Damage_Property\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Damage_Property"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Damage_Property"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Property_Cost\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Property_Cost\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Property_Cost"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Property_Cost"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Damage_Crops\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Damage_Crops\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Damage_Crops"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Damage_Crops"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Crop_Cost\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Crop_Cost\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Crop_Cost"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Crop_Cost"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Begin_Lat\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Begin_Lat\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Begin_Lat"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Begin_Lat"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Begin_Lon\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Begin_Lon\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Begin_Lon"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Begin_Lon"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox["\"End_Lat\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"End_Lat\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "End_Lat"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "End_Lat"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox["\"End_Lon\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"End_Lon\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "End_Lon"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "End_Lon"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Episode_Narrative\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Episode_Narrative\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Episode_Narrative"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Episode_Narrative"]], "Mouse"],
                 Background -> GrayLevel[0.95], 
                Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Event_Narrative\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Event_Narrative\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
                    1006543426][{All, "Event_Narrative"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[All, "Event_Narrative"]], "Mouse"], 
                Background -> GrayLevel[0.95], 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["125578"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["753161"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NEBRASKA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["June", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Hail", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-06 18:10:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["MST-7", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-06 18:10:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["41.93"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-102.21"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["41.93"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-102.21"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Severe storms developed in the Nebraska Panhandle during the \
early evening hours \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Hail predominately penny size with some quarter size hail \
mixed in.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[1, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["125578"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["753160"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NEBRASKA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["June", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Hail", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-06 17:41:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["MST-7", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-06 17:41:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["42.03"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-102.1"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["42.03"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-102.1"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Severe storms developed in the Nebraska Panhandle during the \
early evening hours \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Hail mainly quarter size with some half dollar size hail \
mixed in.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[2, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["125988"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["755273"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["VERMONT", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["June", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Thunderstorm Wind", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-30 23:30:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["EST-5", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-30 23:32:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["15.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["15000"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["44.9565"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-72.8699"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["44.9565"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-72.8699"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Vermont and northern NY influenced by heat ridge but just on \
the periphery, thus \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Numerous trees downed by thunderstorm winds.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[3, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["125988"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["755929"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["VERMONT", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["June", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Thunderstorm Wind", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-30 23:45:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["EST-5", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-30 23:45:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["10.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["10000"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["44.7316"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-72.7474"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["44.7316"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-72.7474"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Vermont and northern NY influenced by heat ridge but just on \
the periphery, thus \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "At least half dozen trees downed or snapped along Route 109 \
between Waterville and Belvidere.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[4, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["125578"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["753163"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NEBRASKA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["June", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-06 18:24:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["MST-7", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-06 18:24:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["40.9"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-101.79"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["40.9"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-101.79"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Severe storms developed in the Nebraska Panhandle during the \
early evening hours \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Tornado briefly touched down in a field 5 miles northwest of \
Grant Nebraska. No  \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[5, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["124972"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["749541"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["KENTUCKY", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["June", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Thunderstorm Wind", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-09 17:05:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["EST-5", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-09 17:05:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["8.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["8000"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["36.72"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-84.48"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["36.72"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-84.48"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Scattered thunderstorms developed this afternoon and evening \
across eastern Kent \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A Skywarn Spotter reported a portion of a roof of a \
commercial building blown of \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[6, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["125038"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["749892"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["KENTUCKY", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["June", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Thunderstorm Wind", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-11 18:11:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["EST-5", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-11 18:11:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NaN", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{28.800000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NaN", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{28.800000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["36.9127"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-84.2539"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["36.9127"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-84.2539"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A cluster of strong to severe thunderstorms developed across \
the Lake Cumberland \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Dispatch reported several trees knocked down along Bee Creek \
Road in Bark Camp.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[7, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["125413"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["752081"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["KENTUCKY", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["June", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Thunderstorm Wind", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-22 17:10:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["EST-5", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-22 17:10:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NaN", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{28.800000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NaN", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{28.800000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["37.6669"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-82.2895"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["37.6669"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-82.2895"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Several rounds of showers and thunderstorms moved through \
eastern Kentucky this  \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Local law enforcement reported a couple of trees blown down \
just southeast of Tu \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[8, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["125413"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["752077"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["KENTUCKY", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["June", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Thunderstorm Wind", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-22 15:20:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["EST-5", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-22 15:28:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NaN", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{28.800000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NaN", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{28.800000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["37.5575"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-83.3866"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["37.5909"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-83.2271"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Several rounds of showers and thunderstorms moved through \
eastern Kentucky this  \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A couple of NWS employees reported trees blown down along \
Kentucky Highway 30 fr \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[9, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["125578"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["753166"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NEBRASKA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["June", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Thunderstorm Wind", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-06 18:34:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["MST-7", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-06 18:34:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["40.76"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-102.04"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["40.76"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-102.04"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Severe storms developed in the Nebraska Panhandle during the \
early evening hours \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Public reported an uprooted tree at this location.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[10, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["125578"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["753167"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NEBRASKA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["June", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Thunderstorm Wind", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-06 18:34:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["MST-7", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-06 18:34:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["100.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["100000"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["40.8"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-101.97"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["40.8"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-101.97"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Severe storms developed in the Nebraska Panhandle during the \
early evening hours \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Public reported 3 overturned pivots and four overturned \
grain bins at this location.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[11, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["125578"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["753168"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NEBRASKA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["June", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Thunderstorm Wind", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-06 20:00:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["MST-7", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-06 20:00:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2000"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["40.57"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-101.98"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["40.57"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-101.98"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Severe storms developed in the Nebraska Panhandle during the \
early evening hours \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Power lines reported down in Lamar.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[12, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["125578"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["753170"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NEBRASKA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["June", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Thunderstorm Wind", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-06 18:27:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["MST-7", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-06 18:27:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["41.05"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-101.84"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["41.05"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-101.84"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Severe storms developed in the Nebraska Panhandle during the \
early evening hours \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Measured wind gust at the Schilz Farm.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[13, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["124117"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["744973"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["VERMONT", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["May", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Flash Flood", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-05-04 20:14:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["EST-5", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-05-04 22:00:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["75.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["75000"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["44.721"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-72.029"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["44.717"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-72.028"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "An energetic storm system moved from the Great Lakes across \
the St. Lawrence Val \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Brief training of thunderstorms with rainfall amounts over \
an inch in less than  \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[14, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["128927"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["773087"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["OHIO", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["September", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Flood", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-09-08 05:15:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["EST-5", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-09-08 06:15:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["40.02"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-84.09"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["40.0189"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-84.0708"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Showers with embedded thunderstorms spread into the area \
through the day as remn \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "High water was reported over State Route 41 and Ohio Route \
201.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[15, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["129852"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["778002"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["FLORIDA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["September", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Thunderstorm Wind", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-09-02 17:09:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CST-6", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-09-02 17:09:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["30.77"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-85.24"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["30.77"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-85.24"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Scattered to numerous showers and thunderstorms occurred \
across the area. Some o \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A tree was uprooted in a citizen's yard in the Marianna \
area.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[16, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["124267"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["745815"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["MONTANA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["May", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Flood", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-05-10 15:11:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["MST-7", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-05-10 15:11:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["46.2117"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-112.093"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["46.2126"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-112.09"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "As a low pressure center aloft consolidated over Washington \
state, isolated show \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Jefferson County Disaster and Emergency Services (DES) \
reported water flowing ac \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[17, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["124230"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["745484"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["KENTUCKY", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["May", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Lightning", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-05-18 18:17:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["EST-5", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-05-18 18:17:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["50.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["50000"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["37.08"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-84.61"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["37.08"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-84.61"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Numerous showers and thunderstorms developed this afternoon, \
extending into the  \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Local media relayed a report of a hay barn set on fire by a \
lightning strike near Somerset.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[18, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["124369"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["746497"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["TEXAS", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["May", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Funnel Cloud", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-05-23 11:50:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CST-6", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-05-23 11:53:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["29.49"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-95.51"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["29.49"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-95.51"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Several funnel clouds were sighted.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A funnel cloud sighted near Sienna Plantation was moving \
north towards Shadow Creek.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[19, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["124155"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["745506"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["PENNSYLVANIA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{115.20000000000002`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["May", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Hail", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{220.80000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-05-15 13:20:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["EST-5", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-05-15 13:20:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["40.4122"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-78.6268"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["40.4122"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-78.6268"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A line of severe thunderstorms developed ahead of an \
approaching cold front duri \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A severe thunderstorm produced half dollar sized south of \
Lilly.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
                  GeneralUtilities`Slice[20, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Item[
                Deploy[
                 Mouseover[
                  Row[{
                    EventHandler[
                    MouseAppearance[
                    Mouseover[
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    GrayLevel[0.5]]], 
                    GrayLevel[0.5], {
                    Thickness[0.023255813953488372`], 
                    FaceForm[{
                    RGBColor[0.481, 0.481, 0.481], 
                    Opacity[1.]}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{0.56, 
                    1.031}, {6.429, 1.031}, {6.429, 60.967}, {0.56, 
                    60.967}}}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{6.192899999999999, 
                    30.980699999999995`}, {42.4399, 0.7526999999999973}, {
                    42.4399, 8.209699999999994}, {16.432899999999997`, 
                    30.982699999999994`}, {42.4119, 53.6547}, {42.4399, 
                    61.244699999999995`}}}]}}, ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]], 
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098], {
                    Thickness[0.023255813953488372`], 
                    FaceForm[{
                    RGBColor[0.481, 0.481, 0.481], 
                    Opacity[1.]}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{0.56, 
                    1.031}, {6.429, 1.031}, {6.429, 60.967}, {0.56, 
                    60.967}}}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{6.192899999999999, 
                    30.980699999999995`}, {42.4399, 0.7526999999999973}, {
                    42.4399, 8.209699999999994}, {16.432899999999997`, 
                    30.982699999999994`}, {42.4119, 53.6547}, {42.4399, 
                    61.244699999999995`}}}]}}, ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]]], "LinkHand"], {
                    "MouseClicked" :> (
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 
                    Clip[TypeSystem`NestedGrid`PackagePrivate`$pos$$ + 
                    61742 (-20), {1, 61742 - -20 + 1}])}], 
                    EventHandler[
                    MouseAppearance[
                    Mouseover[
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    GrayLevel[0.3]]], 
                    GrayLevel[0.3], {
                    Thickness[0.026431741349551847`], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5499, 30.980699999999995`}, {
                    36.7969, 0.7526999999999973}, {36.7969, 
                    8.209699999999994}, {10.7899, 30.982699999999994`}, {
                    36.7689, 53.6547}, {36.7969, 61.244699999999995`}}}]}}, 
                    ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]], 
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098], {
                    Thickness[0.026431741349551847`], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5499, 30.980699999999995`}, {
                    36.7969, 0.7526999999999973}, {36.7969, 
                    8.209699999999994}, {10.7899, 30.982699999999994`}, {
                    36.7689, 53.6547}, {36.7969, 61.244699999999995`}}}]}}, 
                    ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]]], "LinkHand"], {
                    "MouseClicked" :> (
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 
                    Clip[TypeSystem`NestedGrid`PackagePrivate`$pos$$ - 20, {
                    1, 61742 - -20 + 1}])}], 
                    Pane[
                    Row[{"showing ", 1, "\[Dash]", 20, " of ", 
                    Style[
                    61742, FontColor -> GrayLevel[0], FontWeight -> 
                    "Medium"]}, 
                    BaseStyle -> {
                    FontSize -> 8., FontColor -> 
                    RGBColor[
                    0.5098039215686274, 0.5098039215686274, 
                    0.5098039215686274]}], 150, ContentPadding -> False, 
                    Alignment -> {Center, Center}], 
                    EventHandler[
                    MouseAppearance[
                    Mouseover[
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    GrayLevel[0.3]]], 
                    GrayLevel[0.3], {
                    Thickness[0.026431741349551847`], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5778000000000001, 
                    53.654399999999995`}, {26.5568, 30.982399999999995`}, {
                    0.5498000000000001, 8.209399999999995}, {
                    0.5498000000000001, 0.7523999999999944}, {
                    36.796800000000005`, 30.980399999999992`}, {
                    0.5498000000000001, 61.2454}}}]}}, 
                    ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]], 
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098], {
                    Thickness[0.026431741349551847`], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5778000000000001, 
                    53.654399999999995`}, {26.5568, 30.982399999999995`}, {
                    0.5498000000000001, 8.209399999999995}, {
                    0.5498000000000001, 0.7523999999999944}, {
                    36.796800000000005`, 30.980399999999992`}, {
                    0.5498000000000001, 61.2454}}}]}}, 
                    ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]]], "LinkHand"], {
                    "MouseClicked" :> (
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 
                    Clip[TypeSystem`NestedGrid`PackagePrivate`$pos$$ + 20, {
                    1, 61742 - 20 + 1}])}], 
                    EventHandler[
                    MouseAppearance[
                    Mouseover[
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    GrayLevel[0.5]]], 
                    GrayLevel[0.5], {
                    Thickness[0.023255813953488372`], 
                    FaceForm[{
                    RGBColor[0.481, 0.481, 0.481], 
                    Opacity[1.]}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{
                    36.571, 1.031}, {42.440999999999995`, 1.031}, {
                    42.440999999999995`, 60.967}, {36.571, 60.967}}}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5598000000000001, 
                    53.788500000000006`}, {26.5668, 31.015500000000007`}, {
                    0.5878000000000001, 8.343500000000006}, {
                    0.5598000000000001, 0.7525000000000048}, {36.8068, 
                    31.017500000000005`}, {0.5598000000000001, 
                    61.24450000000001}}}]}}, ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]], 
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098], {
                    Thickness[0.023255813953488372`], 
                    FaceForm[{
                    RGBColor[0.481, 0.481, 0.481], 
                    Opacity[1.]}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{
                    36.571, 1.031}, {42.440999999999995`, 1.031}, {
                    42.440999999999995`, 60.967}, {36.571, 60.967}}}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5598000000000001, 
                    53.788500000000006`}, {26.5668, 31.015500000000007`}, {
                    0.5878000000000001, 8.343500000000006}, {
                    0.5598000000000001, 0.7525000000000048}, {36.8068, 
                    31.017500000000005`}, {0.5598000000000001, 
                    61.24450000000001}}}]}}, ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]]], "LinkHand"], {
                    "MouseClicked" :> (
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 
                    Clip[TypeSystem`NestedGrid`PackagePrivate`$pos$$ + 
                    61742 20, {1, 61742 - 20 + 1}])}]}, "   "], 
                  Row[{
                    EventHandler[
                    MouseAppearance[
                    Mouseover[
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    GrayLevel[0.5]]], 
                    GrayLevel[0.5], {
                    Thickness[0.023255813953488372`], 
                    FaceForm[{
                    RGBColor[0.481, 0.481, 0.481], 
                    Opacity[1.]}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{0.56, 
                    1.031}, {6.429, 1.031}, {6.429, 60.967}, {0.56, 
                    60.967}}}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{6.192899999999999, 
                    30.980699999999995`}, {42.4399, 0.7526999999999973}, {
                    42.4399, 8.209699999999994}, {16.432899999999997`, 
                    30.982699999999994`}, {42.4119, 53.6547}, {42.4399, 
                    61.244699999999995`}}}]}}, ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]], 
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098], {
                    Thickness[0.023255813953488372`], 
                    FaceForm[{
                    RGBColor[0.481, 0.481, 0.481], 
                    Opacity[1.]}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{0.56, 
                    1.031}, {6.429, 1.031}, {6.429, 60.967}, {0.56, 
                    60.967}}}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{6.192899999999999, 
                    30.980699999999995`}, {42.4399, 0.7526999999999973}, {
                    42.4399, 8.209699999999994}, {16.432899999999997`, 
                    30.982699999999994`}, {42.4119, 53.6547}, {42.4399, 
                    61.244699999999995`}}}]}}, ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]]], "LinkHand"], {
                    "MouseClicked" :> (
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 
                    Clip[TypeSystem`NestedGrid`PackagePrivate`$pos$$ + 
                    61742 (-20), {1, 61742 - -20 + 1}])}], 
                    EventHandler[
                    MouseAppearance[
                    Mouseover[
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    GrayLevel[0.3]]], 
                    GrayLevel[0.3], {
                    Thickness[0.026431741349551847`], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5499, 30.980699999999995`}, {
                    36.7969, 0.7526999999999973}, {36.7969, 
                    8.209699999999994}, {10.7899, 30.982699999999994`}, {
                    36.7689, 53.6547}, {36.7969, 61.244699999999995`}}}]}}, 
                    ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]], 
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098], {
                    Thickness[0.026431741349551847`], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5499, 30.980699999999995`}, {
                    36.7969, 0.7526999999999973}, {36.7969, 
                    8.209699999999994}, {10.7899, 30.982699999999994`}, {
                    36.7689, 53.6547}, {36.7969, 61.244699999999995`}}}]}}, 
                    ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]]], "LinkHand"], {
                    "MouseClicked" :> (
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 
                    Clip[TypeSystem`NestedGrid`PackagePrivate`$pos$$ - 20, {
                    1, 61742 - -20 + 1}])}], 
                    Pane[
                    Row[{"showing ", 1, "\[Dash]", 20, " of ", 
                    Style[
                    61742, FontColor -> GrayLevel[0], FontWeight -> 
                    "Medium"]}, 
                    BaseStyle -> {
                    FontSize -> 8., FontColor -> 
                    RGBColor[
                    0.5098039215686274, 0.5098039215686274, 
                    0.5098039215686274]}], 150, ContentPadding -> False, 
                    Alignment -> {Center, Center}], 
                    EventHandler[
                    MouseAppearance[
                    Mouseover[
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    GrayLevel[0.3]]], 
                    GrayLevel[0.3], {
                    Thickness[0.026431741349551847`], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5778000000000001, 
                    53.654399999999995`}, {26.5568, 30.982399999999995`}, {
                    0.5498000000000001, 8.209399999999995}, {
                    0.5498000000000001, 0.7523999999999944}, {
                    36.796800000000005`, 30.980399999999992`}, {
                    0.5498000000000001, 61.2454}}}]}}, 
                    ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]], 
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098], {
                    Thickness[0.026431741349551847`], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5778000000000001, 
                    53.654399999999995`}, {26.5568, 30.982399999999995`}, {
                    0.5498000000000001, 8.209399999999995}, {
                    0.5498000000000001, 0.7523999999999944}, {
                    36.796800000000005`, 30.980399999999992`}, {
                    0.5498000000000001, 61.2454}}}]}}, 
                    ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]]], "LinkHand"], {
                    "MouseClicked" :> (
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 
                    Clip[TypeSystem`NestedGrid`PackagePrivate`$pos$$ + 20, {
                    1, 61742 - 20 + 1}])}], 
                    EventHandler[
                    MouseAppearance[
                    Mouseover[
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    GrayLevel[0.5]]], 
                    GrayLevel[0.5], {
                    Thickness[0.023255813953488372`], 
                    FaceForm[{
                    RGBColor[0.481, 0.481, 0.481], 
                    Opacity[1.]}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{
                    36.571, 1.031}, {42.440999999999995`, 1.031}, {
                    42.440999999999995`, 60.967}, {36.571, 60.967}}}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5598000000000001, 
                    53.788500000000006`}, {26.5668, 31.015500000000007`}, {
                    0.5878000000000001, 8.343500000000006}, {
                    0.5598000000000001, 0.7525000000000048}, {36.8068, 
                    31.017500000000005`}, {0.5598000000000001, 
                    61.24450000000001}}}]}}, ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]], 
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098], {
                    Thickness[0.023255813953488372`], 
                    FaceForm[{
                    RGBColor[0.481, 0.481, 0.481], 
                    Opacity[1.]}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{
                    36.571, 1.031}, {42.440999999999995`, 1.031}, {
                    42.440999999999995`, 60.967}, {36.571, 60.967}}}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5598000000000001, 
                    53.788500000000006`}, {26.5668, 31.015500000000007`}, {
                    0.5878000000000001, 8.343500000000006}, {
                    0.5598000000000001, 0.7525000000000048}, {36.8068, 
                    31.017500000000005`}, {0.5598000000000001, 
                    61.24450000000001}}}]}}, ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]]], "LinkHand"], {
                    "MouseClicked" :> (
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 
                    Clip[TypeSystem`NestedGrid`PackagePrivate`$pos$$ + 
                    61742 20, {1, 61742 - 20 + 1}])}]}, "   "]]], Background -> 
                GrayLevel[0.98], Alignment -> {Left, Top}, 
                BaseStyle -> {ContextMenu -> {
                    MenuItem["Hide", 
                    KernelExecute[
                    
                    TypeSystem`NestedGrid`PackagePrivate`adjustLimits[{
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1006543426},
                     1, {}]], MenuEvaluator -> Automatic], 
                    MenuItem["Show up to 10 rows", 
                    KernelExecute[
                    
                    TypeSystem`NestedGrid`PackagePrivate`adjustLimits[{
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1006543426},
                     10, {}]], MenuEvaluator -> Automatic], 
                    MenuItem["Show up to 30 rows", 
                    KernelExecute[
                    
                    TypeSystem`NestedGrid`PackagePrivate`adjustLimits[{
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1006543426},
                     30, {}]], MenuEvaluator -> Automatic], 
                    MenuItem["Show up to 100 rows", 
                    KernelExecute[
                    
                    TypeSystem`NestedGrid`PackagePrivate`adjustLimits[{
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1006543426},
                     100, {}]], MenuEvaluator -> Automatic], 
                    MenuItem["Show all", 
                    KernelExecute[
                    
                    TypeSystem`NestedGrid`PackagePrivate`adjustLimits[{
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1006543426},
                     100000000, {}]], MenuEvaluator -> Automatic]}}], 
               SpanFromLeft, SpanFromLeft, SpanFromLeft, SpanFromLeft, 
               SpanFromLeft, SpanFromLeft, SpanFromLeft, SpanFromLeft, 
               SpanFromLeft, SpanFromLeft, SpanFromLeft, SpanFromLeft, 
               SpanFromLeft, SpanFromLeft, SpanFromLeft, SpanFromLeft, 
               SpanFromLeft, SpanFromLeft, SpanFromLeft, SpanFromLeft, 
               SpanFromLeft, SpanFromLeft}}, BaseStyle -> {ContextMenu -> {
                 MenuItem["Copy position to clipboard", 
                  KernelExecute[
                   TypeSystem`NestedGrid`PackagePrivate`toCurrentPosition[
                   TypeSystem`NestedGrid`PackagePrivate`copyClip]], 
                  MenuEvaluator -> Automatic], 
                 MenuItem["Copy data to clipboard", 
                  KernelExecute[
                   TypeSystem`NestedGrid`PackagePrivate`toCurrentData[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`copyClip]], 
                  MenuEvaluator -> Automatic], Delimiter, 
                 MenuItem["Paste position in new cell", 
                  KernelExecute[
                   TypeSystem`NestedGrid`PackagePrivate`toCurrentPosition[
                   TypeSystem`NestedGrid`PackagePrivate`cellPaste]], 
                  MenuEvaluator -> Automatic], 
                 MenuItem["Paste data in new cell", 
                  KernelExecute[
                   TypeSystem`NestedGrid`PackagePrivate`toCurrentData[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`cellPaste]], 
                  MenuEvaluator -> Automatic]}, FontFamily -> "Verdana", 
               FontSize -> 12}, Alignment -> Left, RowMinHeight -> 1.5, 
             Dividers -> All, FrameStyle -> GrayLevel[0.85], 
             BaseStyle -> {FontFamily -> "Verdana", FontSize -> 12}], 
            LineBreakWithin -> False, ContextMenu -> {}, NumberMarks -> False,
             ShowAutoStyles -> False]], 
         TypeSystem`NestedGrid`PackagePrivate`initialQ = True, 
         TypeSystem`NestedGrid`PackagePrivate`self = $Failed}, 
        Dynamic[
         TypeSystem`NestedGrid`PackagePrivate`setupViewPath[
         TypeSystem`NestedGrid`PackagePrivate`$path$$, If[
            Not[TypeSystem`NestedGrid`PackagePrivate`initialQ], 
            Module[{
             TypeSystem`NestedGrid`PackagePrivate`tmpGrid$ = $Failed, 
              TypeSystem`NestedGrid`PackagePrivate`tmpData$ = 
              TypeSystem`NestedGrid`PackagePrivate`LookupCacheValue[
                TypeSystem`NestedGrid`PackagePrivate`$state$$["Data"]]}, 
             TypeSystem`NestedGrid`PackagePrivate`tmpGrid$ = 
              If[TypeSystem`NestedGrid`PackagePrivate`tmpData$ === 
                TypeSystem`NestedGrid`PackagePrivate`$NotCached, 
                TypeSystem`NestedGrid`PackagePrivate`renderedGrid, 
                TypeSystem`NestedGrid`PackagePrivate`renderGrid[
                TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                 TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                 TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                 TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1006543426][
                TypeSystem`NestedGrid`PackagePrivate`tmpData$]]; If[
               Not[
                FailureQ[TypeSystem`NestedGrid`PackagePrivate`tmpGrid$]], 
               TypeSystem`NestedGrid`PackagePrivate`renderedGrid = 
               TypeSystem`NestedGrid`PackagePrivate`tmpGrid$]; Null]]; 
          TypeSystem`NestedGrid`PackagePrivate`initialQ = False; 
          TypeSystem`NestedGrid`PackagePrivate`$pos$$; If[
            FailureQ[TypeSystem`NestedGrid`PackagePrivate`renderedGrid], 
            TypeSystem`SparseGrid[
             TypeSystem`H["(data no longer present)"]], 
            If[GeneralUtilities`$DebugMode, 
             Row[{TypeSystem`NestedGrid`PackagePrivate`renderedGrid, "  ", 
               TypeSystem`NestedGrid`PackagePrivate`formatState[
               TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                TypeSystem`NestedGrid`PackagePrivate`$pos$$]}], 
             TypeSystem`NestedGrid`PackagePrivate`renderedGrid]]], 
         TrackedSymbols :> {TypeSystem`NestedGrid`PackagePrivate`$pos$$}], 
        DynamicModuleValues :> {}], 
      TypeSystem`NestedGrid`PackagePrivate`$posCell$$, 
      TypeSystem`NestedGrid`PackagePrivate`$topBar$$ = Dynamic[
        TypeSystem`NestedGrid`PackagePrivate`alignBar[
        TypeSystem`NestedGrid`PackagePrivate`$state$$][
         TypeSystem`NestedGrid`PackagePrivate`makeFramedBar[
          TypeSystem`PackageScope`Pathbar[
          TypeSystem`NestedGrid`PackagePrivate`$path$$, 
           TypeSystem`NestedGrid`PackagePrivate`updateState[
           TypeSystem`NestedGrid`PackagePrivate`$state$$, 
            TypeSystem`NestedGrid`PackagePrivate`$path$$, 
            TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
            TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1006543426]]]], 
        TrackedSymbols :> {TypeSystem`NestedGrid`PackagePrivate`$path$$}], 
      TypeSystem`NestedGrid`PackagePrivate`$bottomBar$$ = Framed[
        Dynamic[
         Replace[
          MouseAnnotation[Null], {
          TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][Null] -> 
           "", TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1006543426][
             Pattern[TypeSystem`NestedGrid`PackagePrivate`path, 
              Blank[]]] :> (
            TypeSystem`NestedGrid`PackagePrivate`$lastPath = 
             TypeSystem`NestedGrid`PackagePrivate`path; 
            TypeSystem`NestedGrid`PackagePrivate`makePathTrail[
             TypeSystem`NestedGrid`PackagePrivate`path, 
              TypeSystem`NestedGrid`PackagePrivate`makePathElements]), Null :> 
           Spacer[10], Blank[] :> Spacer[10]}], TrackedSymbols :> {}], 
        FrameStyle -> None, ImageMargins -> 0, FrameMargins -> 0, Alignment -> 
        Top, ImageSize -> {Automatic, 14}]}, 
     DynamicBox[
      ToBoxes[
       Column[
        If[TypeSystem`NestedGrid`PackagePrivate`$path$$ == {}, {
          TypeSystem`NestedGrid`PackagePrivate`displayScrollBar[
          TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
           TypeSystem`NestedGrid`PackagePrivate`$state$$, 
           TypeSystem`NestedGrid`PackagePrivate`$pos$$], 
          TypeSystem`NestedGrid`PackagePrivate`onDesktopShow[
           TypeSystem`NestedGrid`PackagePrivate`alignBar[
           TypeSystem`NestedGrid`PackagePrivate`$state$$][
           TypeSystem`NestedGrid`PackagePrivate`$bottomBar$$]]}, {
         TypeSystem`NestedGrid`PackagePrivate`$topBar$$, 
          TypeSystem`NestedGrid`PackagePrivate`displayScrollBar[
          TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
           TypeSystem`NestedGrid`PackagePrivate`$state$$, 
           TypeSystem`NestedGrid`PackagePrivate`$pos$$], 
          TypeSystem`NestedGrid`PackagePrivate`onDesktopShow[
           TypeSystem`NestedGrid`PackagePrivate`alignBar[
           TypeSystem`NestedGrid`PackagePrivate`$state$$][
           TypeSystem`NestedGrid`PackagePrivate`$bottomBar$$]]}], Spacings -> 
        If[TypeSystem`NestedGrid`PackagePrivate`$path$$ == {}, 
          0, {{}, {0, 0.05, 0}}]], StandardForm], 
      ImageSizeCache -> {3401., {279., 285.}}, 
      TrackedSymbols :> {
       TypeSystem`NestedGrid`PackagePrivate`$state$$, 
        TypeSystem`NestedGrid`PackagePrivate`$grid$$}], 
     BaseStyle -> {LineBreakWithin -> False}, Deinitialization :> 
     TypeSystem`NestedGrid`PackagePrivate`deleteState[
      TypeSystem`NestedGrid`PackagePrivate`$state$$], 
     DynamicModuleValues :> {}, Initialization :> 
     Block[{$ContextPath = $ContextPath}, 
       Needs["TypeSystem`"]]], Deploy, DefaultBaseStyle -> "Deploy"]},
  "CopyTag",
  DisplayFunction->(#& ),
  InterpretationFunction->("Dataset[<>]"& )]], "Output",ExpressionUUID->\
"a3390f20-4e97-4c58-a5bd-c662b2cf1154"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Seleccionar solamente los que son de event type tornado", "Section",ExpressionUUID->"c3f05b45-64ed-4079-b7c2-fa495b688c2e"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Tornados", "=", 
  RowBox[{"Select", "[", 
   RowBox[{"datas", ",", 
    RowBox[{
     RowBox[{
      RowBox[{"#", "[", "\"\<Event_Type\>\"", "]"}], "\[Equal]", 
      "\"\<Tornado\>\""}], "&"}]}], "]"}]}]], "Input",ExpressionUUID->\
"0c17f1a6-3670-47a7-93fd-977ac3468882"],

Cell[BoxData[
 TemplateBox[{TagBox[
    DynamicModuleBox[{
     TypeSystem`NestedGrid`PackagePrivate`$state$$ = 
      Data`UnorderedAssociation[
       "RowCount" -> 20, "Length" -> 1248, "InitialType" -> TypeSystem`Vector[
          
          TypeSystem`Struct[{
           "EpisodeID", "Event_ID", "State", "Year", "Month", "Event_Type", 
            "Begin_Date_Time", "Timezone", "End_Date_Time", "Injuries_Direct",
             "Injuries_Indirect", "Deaths_Direct", "Deaths_Indirect", 
            "Damage_Property", "Property_Cost", "Damage_Crops", "Crop_Cost", 
            "Begin_Lat", "Begin_Lon", "End_Lat", "End_Lon", 
            "Episode_Narrative", "Event_Narrative"}, {
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[String], TypeSystem`AnyType, 
            TypeSystem`Atom[String], TypeSystem`AnyType, TypeSystem`AnyType, 
            TypeSystem`AnyType, TypeSystem`AnyType, TypeSystem`AnyType, 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String]}], 1248], "Shape" -> 
        TypeSystem`PackageScope`HeaderShape[
          
          Association[{All, "EpisodeID"} -> 1, {All, "Event_ID"} -> 
           1, {All, "State"} -> 1, {All, "Year"} -> 1, {All, "Month"} -> 
           1, {All, "Event_Type"} -> 1, {All, "Begin_Date_Time"} -> 
           1, {All, "Timezone"} -> 1, {All, "End_Date_Time"} -> 
           1, {All, "Injuries_Direct"} -> 1, {All, "Injuries_Indirect"} -> 
           1, {All, "Deaths_Direct"} -> 1, {All, "Deaths_Indirect"} -> 
           1, {All, "Damage_Property"} -> 1, {All, "Property_Cost"} -> 
           1, {All, "Damage_Crops"} -> 1, {All, "Crop_Cost"} -> 
           1, {All, "Begin_Lat"} -> 1, {All, "Begin_Lon"} -> 
           1, {All, "End_Lat"} -> 1, {All, "End_Lon"} -> 
           1, {All, "Episode_Narrative"} -> 1, {All, "Event_Narrative"} -> 1], 
          TypeSystem`PackageScope`Limited[
           TypeSystem`PackageScope`ColumnShape[
            TypeSystem`PackageScope`RowShape[
             Association[
             "EpisodeID" -> TypeSystem`PackageScope`AtomShape[34], "Event_ID" -> 
              TypeSystem`PackageScope`AtomShape[34], "State" -> 
              TypeSystem`PackageScope`AtomShape[134.40000000000003`], "Year" -> 
              TypeSystem`PackageScope`AtomShape[34], "Month" -> 
              TypeSystem`PackageScope`AtomShape[86.4], "Event_Type" -> 
              TypeSystem`PackageScope`AtomShape[67.20000000000002], 
              "Begin_Date_Time" -> 
              TypeSystem`PackageScope`AtomShape[182.40000000000003`], 
              "Timezone" -> 
              TypeSystem`PackageScope`AtomShape[48.00000000000001], 
              "End_Date_Time" -> 
              TypeSystem`PackageScope`AtomShape[182.40000000000003`], 
              "Injuries_Direct" -> TypeSystem`PackageScope`AtomShape[34], 
              "Injuries_Indirect" -> TypeSystem`PackageScope`AtomShape[34], 
              "Deaths_Direct" -> TypeSystem`PackageScope`AtomShape[34], 
              "Deaths_Indirect" -> TypeSystem`PackageScope`AtomShape[34], 
              "Damage_Property" -> 
              TypeSystem`PackageScope`AtomShape[67.20000000000002], 
              "Property_Cost" -> TypeSystem`PackageScope`UnknownShape, 
              "Damage_Crops" -> 
              TypeSystem`PackageScope`AtomShape[67.20000000000002], 
              "Crop_Cost" -> TypeSystem`PackageScope`UnknownShape, 
              "Begin_Lat" -> TypeSystem`PackageScope`UnknownShape, 
              "Begin_Lon" -> TypeSystem`PackageScope`UnknownShape, "End_Lat" -> 
              TypeSystem`PackageScope`UnknownShape, "End_Lon" -> 
              TypeSystem`PackageScope`UnknownShape, "Episode_Narrative" -> 
              TypeSystem`PackageScope`AtomShape[480.00000000000006`], 
              "Event_Narrative" -> 
              TypeSystem`PackageScope`AtomShape[480.00000000000006`]]]], 
           20, {}]], "InitialData" -> 
        TypeSystem`PackageScope`CacheHandle[354838940], "Type" -> 
        TypeSystem`Vector[
          
          TypeSystem`Struct[{
           "EpisodeID", "Event_ID", "State", "Year", "Month", "Event_Type", 
            "Begin_Date_Time", "Timezone", "End_Date_Time", "Injuries_Direct",
             "Injuries_Indirect", "Deaths_Direct", "Deaths_Indirect", 
            "Damage_Property", "Property_Cost", "Damage_Crops", "Crop_Cost", 
            "Begin_Lat", "Begin_Lon", "End_Lat", "End_Lon", 
            "Episode_Narrative", "Event_Narrative"}, {
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[Integer], 
            TypeSystem`Atom[String], TypeSystem`AnyType, 
            TypeSystem`Atom[String], TypeSystem`AnyType, TypeSystem`AnyType, 
            TypeSystem`AnyType, TypeSystem`AnyType, TypeSystem`AnyType, 
            TypeSystem`Atom[String], 
            TypeSystem`Atom[String]}], 1248], "HandleQ" -> True, "RowTarget" -> 
        20, "Data" -> TypeSystem`PackageScope`CacheHandle[354838940]], 
      TypeSystem`NestedGrid`PackagePrivate`$path$$ = {}, 
      TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 1, 
      TypeSystem`NestedGrid`PackagePrivate`$grid$$ = 
      DynamicModule[{
        TypeSystem`NestedGrid`PackagePrivate`renderedGrid = Deploy[
           Style[
            Grid[{{
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"EpisodeID\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"EpisodeID\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "EpisodeID"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "EpisodeID"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox["\"Event_ID\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Event_ID\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Event_ID"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Event_ID"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox["\"State\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"State\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "State"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "State"]], "Mouse"], Background -> 
                GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox["\"Year\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Year\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Year"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Year"]], "Mouse"], Background -> 
                GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox["\"Month\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Month\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Month"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Month"]], "Mouse"], Background -> 
                GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Event_Type\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Event_Type\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Event_Type"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Event_Type"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Begin_Date_Time\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Begin_Date_Time\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Begin_Date_Time"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Begin_Date_Time"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox["\"Timezone\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Timezone\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Timezone"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Timezone"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"End_Date_Time\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"End_Date_Time\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "End_Date_Time"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "End_Date_Time"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Injuries_Direct\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Injuries_Direct\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Injuries_Direct"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Injuries_Direct"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Injuries_Indirect\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Injuries_Indirect\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Injuries_Indirect"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Injuries_Indirect"]], "Mouse"],
                 Background -> GrayLevel[0.95], 
                Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Deaths_Direct\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Deaths_Direct\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Deaths_Direct"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Deaths_Direct"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Deaths_Indirect\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Deaths_Indirect\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Deaths_Indirect"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Deaths_Indirect"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Damage_Property\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Damage_Property\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Damage_Property"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Damage_Property"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Property_Cost\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Property_Cost\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Property_Cost"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Property_Cost"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Damage_Crops\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Damage_Crops\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Damage_Crops"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Damage_Crops"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Crop_Cost\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Crop_Cost\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Crop_Cost"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Crop_Cost"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Begin_Lat\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Begin_Lat\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Begin_Lat"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Begin_Lat"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Begin_Lon\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Begin_Lon\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Begin_Lon"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Begin_Lon"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox["\"End_Lat\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"End_Lat\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "End_Lat"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "End_Lat"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox["\"End_Lon\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"End_Lon\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "End_Lon"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "End_Lon"]], "Mouse"], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Episode_Narrative\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Episode_Narrative\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Episode_Narrative"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Episode_Narrative"]], "Mouse"],
                 Background -> GrayLevel[0.95], 
                Alignment -> {Left, Baseline}], 
               Item[
                Annotation[
                 EventHandler[
                  MouseAppearance[
                   Mouseover[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Event_Narrative\"", FontColor -> GrayLevel[0.4]]], {{
                    20, Full}, 15}], 
                    Style[
                    Pane[
                    RawBoxes[
                    StyleBox[
                    "\"Event_Narrative\"", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], {{20, Full}, 15}], FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                  TypeSystem`NestedGrid`PackagePrivate`updateState[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][{
                    All, "Event_Narrative"}]], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[All, "Event_Narrative"]], "Mouse"], 
                Background -> GrayLevel[0.95], 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["125578"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["753163"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NEBRASKA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["June", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-06 18:24:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["MST-7", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-06 18:24:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["40.9"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-101.79"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["40.9"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-101.79"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Severe storms developed in the Nebraska Panhandle during the \
early evening hours \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                
                "Tornado briefly touched down in a field 5 miles northwest of \
Grant Nebraska. No  \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[1, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["124947"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["749421"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["FLORIDA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["May", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-05-30 08:01:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["EST-5", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-05-30 08:03:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["10.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["10000"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["27.1902"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-81.7471"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["27.2011"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-81.7501"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Scattered showers and thunderstorms moved north through west \
central Florida on  \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "DeSoto County emergency management reported a barn was \
destroyed by a brief torn \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[2, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["121962"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["730211"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["MISSISSIPPI", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["February", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-02-07 04:15:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CST-6", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-02-07 04:26:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["200.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["200000"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["32.3963"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-88.9137"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["32.4138"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-88.7795"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Showers and thunderstorms developed as a cold front pushed \
through the region. S \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "This tornado touched down along Bogue Statinea Road and \
tracked east northeast f \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[3, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["122701"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["741682"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["TEXAS", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["March", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-03-18 20:18:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CST-6", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-03-18 20:24:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NaN", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{28.800000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NaN", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{28.800000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["36.0558"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-100.258"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["36.0891"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-100.227"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A upper level low developed across the far NE Texas \
Panhandle with an associated \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A tornado touched down in rural Hemphill County northwest of \
Glazier and continu \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[4, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["122701"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["739432"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["TEXAS", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["March", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-03-18 18:29:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CST-6", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-03-18 18:34:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NaN", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{28.800000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NaN", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{28.800000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["36.13"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-101.19"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["36.1301"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-101.189"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A upper level low developed across the far NE Texas \
Panhandle with an associated \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Land spout tornado reported with multiple photos. Was on \
ground for about 5 minutes.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[5, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["122701"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["741681"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["TEXAS", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["March", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-03-18 20:14:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CST-6", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-03-18 20:18:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NaN", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{28.800000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NaN", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{28.800000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["36.0248"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-100.3"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["36.0558"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-100.258"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A upper level low developed across the far NE Texas \
Panhandle with an associated \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A tornado touched down in rural Hemphill County northwest of \
Glazier. The tornad \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[6, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["125892"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["754832"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["GEORGIA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["May", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-05-24 17:15:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["EST-5", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-05-24 17:15:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NaN", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{28.800000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["31.52"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-82.05"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["31.52"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-82.05"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "East coast sea breeze storms moved inland an converged with \
high instability and \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "EM did a storm survey and confirmed EF0 tornado damage near \
Burch Farms and Dixi \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[7, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["123309"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["739168"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["MISSOURI", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["January", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-01-22 01:12:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CST-6", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-01-22 01:13:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["38.5094"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-90.8232"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["38.5102"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-90.8206"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Isolated strong to severe storms moved through the region. \
One tornado and isola \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A very weak tornado developed west of the intersection of \
Decker Road and Dusty  \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[8, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["126177"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["756316"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["KANSAS", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["May", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-05-14 17:40:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CST-6", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-05-14 17:41:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["37.09"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-97.07"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["37.0893"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-97.069"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Severe thunderstorms developed along and ahead of a \
quasi-stationary front that  \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Very brief touchdown in open country.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[9, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["123391"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["739891"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["LOUISIANA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["February", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-02-07 03:48:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CST-6", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-02-07 03:55:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["25.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["25000"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["30.96"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-93.0201"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["30.9641"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-92.9365"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A line of thunderstorms moved across the region producing an \
isolated tornado at \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A tornado started west of Webster Marcile Road near the \
community of Cravens sna \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[10, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["122497"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["736405"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["ALABAMA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["February", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-02-11 03:42:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CST-6", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-02-11 03:48:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["30.9987"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-85.3859"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["31.0161"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-85.3431"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "For the first time since January 2017, an event including \
both flooding and torn \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A tornado touched down in northwest Jackson county and \
briefly moved into far so \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[11, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["123518"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["742658"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["ARKANSAS", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["February", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-02-24 17:11:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CST-6", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-02-24 17:12:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["20.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["20000"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["35.4534"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-91.0543"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["35.4539"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-91.0506"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A line of thunderstorms moved through Arkansas on February \
24th, bringing damagi \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A very small tornado touched down on a property \
in|Beedeville, Arkansas. This to \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[12, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["121726"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["735190"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["ARKANSAS", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["January", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-01-22 00:49:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CST-6", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-01-22 00:53:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["100.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["100000"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["35.1771"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-92.3648"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["35.2038"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-92.3299"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "During the early morning hours on Sunday 1/21, a line of \
severe thunderstorms in \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "The most extensive damage occurred to the Needs Creek Church \
and adjacent neighb \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[13, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["122115"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["731013"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["MISSISSIPPI", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["February", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-02-10 16:50:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CST-6", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-02-10 16:50:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["50.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["50000"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["32.7853"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-89.133"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["32.7853"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-89.133"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Heavy rain developed across portions of the region in \
association with a cold fr \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "An EF-0 tornado briefly touched down at the intersection of \
Highways 15 and 19.  \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[14, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["125220"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["751008"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["SOUTH CAROLINA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["April", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-04-15 13:58:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["EST-5", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-04-15 14:00:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["50.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["50000"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["35.085"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-81.116"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["35.097"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-81.104"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Scattered to numerous afternoon thunderstorms developed \
ahead of a cold front fr \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "NWS Storm Survey found the path of a weak tornado that began \
along Mountainview  \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[15, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["122095"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["731511"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CALIFORNIA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["February", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-02-12 11:30:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["PST-8", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-02-12 11:32:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["36.6685"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-119.513"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["36.6699"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-119.508"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "High pressure brought a prolonged period of unseasonably \
warm temperatures to be \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A tornado briefly touched down in rural farmland between \
Riverbend Ave. and Good \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[16, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["125728"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["753988"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["FLORIDA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["June", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-29 10:14:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["EST-5", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-06-29 10:15:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["100.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["100000"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["28.0124"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-82.3923"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["28.01"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-82.39"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Scattered thunderstorms moved east through the Tampa Bay \
area throughout the lat \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Broadcast media reported on moderate roof damage to a 2 \
story apartment building \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[17, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["122042"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["730634"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CALIFORNIA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["January", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-01-25 16:40:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["PST-8", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-01-25 16:40:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.10K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["100"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["40.8081"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-124.163"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["40.8081"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-124.163"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "An upper-level storm system moved east across northwest \
California, resulting in \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "A waterspout over Humboldt Bay moved inland across Woodley \
Island. A boat anemom \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[18, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["121603"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["727807"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["TEXAS", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["January", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-01-21 18:29:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CST-6", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-01-21 18:31:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["90.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["90000"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["0.00K", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["32.1196"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-96.3186"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["32.1307"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-96.3053"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Severe thunderstorms occurred along a dryline and cold \
front.", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "The Navarro County Emergency Manager reported a narrow \
damage path near Powell.  \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[19, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Pane[
                Annotation[
                 RawBoxes["128744"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["EpisodeID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["775465"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Event_ID"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["MINNESOTA", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["State"]]], "Mouse"], 
                ImageSize -> {{134.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["2018"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Year"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["August", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Month"]]], "Mouse"], 
                ImageSize -> {{86.4, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["Tornado", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Event_Type"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-08-26 22:51:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Begin_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["CST-6", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Timezone"]]], "Mouse"], 
                ImageSize -> {{48.00000000000001, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["2018-08-26 22:58:00", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["End_Date_Time"]]], "Mouse"], 
                ImageSize -> {{182.40000000000003`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Injuries_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Injuries_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Deaths_Direct"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["0"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Deaths_Indirect"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Damage_Property"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NaN", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Property_Cost"]]], "Mouse"], 
                ImageSize -> {{28.800000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Damage_Crops"]]], "Mouse"], 
                ImageSize -> {{67.20000000000002, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation["NaN", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Crop_Cost"]]], "Mouse"], 
                ImageSize -> {{28.800000000000004`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["47.62"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Begin_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-95.72"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Begin_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["47.67"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["End_Lat"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["-95.55"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["End_Lon"]]], "Mouse"], 
                ImageSize -> {{60, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "Thunderstorms flared up across southern Cass County (North \
Dakota) on the aftern \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Episode_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                "This tornado tracked intermittently from 3 miles \
north-northeast of Fosston to 9 \[DescendingEllipsis] ", 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
                  GeneralUtilities`Slice[20, 
                   Key["Event_Narrative"]]], "Mouse"], 
                ImageSize -> {{480.00000000000006`, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Item[
                Deploy[
                 Mouseover[
                  Row[{
                    EventHandler[
                    MouseAppearance[
                    Mouseover[
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    GrayLevel[0.5]]], 
                    GrayLevel[0.5], {
                    Thickness[0.023255813953488372`], 
                    FaceForm[{
                    RGBColor[0.481, 0.481, 0.481], 
                    Opacity[1.]}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{0.56, 
                    1.031}, {6.429, 1.031}, {6.429, 60.967}, {0.56, 
                    60.967}}}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{6.192899999999999, 
                    30.980699999999995`}, {42.4399, 0.7526999999999973}, {
                    42.4399, 8.209699999999994}, {16.432899999999997`, 
                    30.982699999999994`}, {42.4119, 53.6547}, {42.4399, 
                    61.244699999999995`}}}]}}, ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]], 
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098], {
                    Thickness[0.023255813953488372`], 
                    FaceForm[{
                    RGBColor[0.481, 0.481, 0.481], 
                    Opacity[1.]}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{0.56, 
                    1.031}, {6.429, 1.031}, {6.429, 60.967}, {0.56, 
                    60.967}}}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{6.192899999999999, 
                    30.980699999999995`}, {42.4399, 0.7526999999999973}, {
                    42.4399, 8.209699999999994}, {16.432899999999997`, 
                    30.982699999999994`}, {42.4119, 53.6547}, {42.4399, 
                    61.244699999999995`}}}]}}, ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]]], "LinkHand"], {
                    "MouseClicked" :> (
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 
                    Clip[TypeSystem`NestedGrid`PackagePrivate`$pos$$ + 
                    1248 (-20), {1, 1248 - -20 + 1}])}], 
                    EventHandler[
                    MouseAppearance[
                    Mouseover[
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    GrayLevel[0.3]]], 
                    GrayLevel[0.3], {
                    Thickness[0.026431741349551847`], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5499, 30.980699999999995`}, {
                    36.7969, 0.7526999999999973}, {36.7969, 
                    8.209699999999994}, {10.7899, 30.982699999999994`}, {
                    36.7689, 53.6547}, {36.7969, 61.244699999999995`}}}]}}, 
                    ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]], 
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098], {
                    Thickness[0.026431741349551847`], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5499, 30.980699999999995`}, {
                    36.7969, 0.7526999999999973}, {36.7969, 
                    8.209699999999994}, {10.7899, 30.982699999999994`}, {
                    36.7689, 53.6547}, {36.7969, 61.244699999999995`}}}]}}, 
                    ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]]], "LinkHand"], {
                    "MouseClicked" :> (
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 
                    Clip[TypeSystem`NestedGrid`PackagePrivate`$pos$$ - 20, {
                    1, 1248 - -20 + 1}])}], 
                    Pane[
                    Row[{"showing ", 1, "\[Dash]", 20, " of ", 
                    Style[
                    1248, FontColor -> GrayLevel[0], FontWeight -> "Medium"]},
                     BaseStyle -> {
                    FontSize -> 8., FontColor -> 
                    RGBColor[
                    0.5098039215686274, 0.5098039215686274, 
                    0.5098039215686274]}], 150, ContentPadding -> False, 
                    Alignment -> {Center, Center}], 
                    EventHandler[
                    MouseAppearance[
                    Mouseover[
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    GrayLevel[0.3]]], 
                    GrayLevel[0.3], {
                    Thickness[0.026431741349551847`], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5778000000000001, 
                    53.654399999999995`}, {26.5568, 30.982399999999995`}, {
                    0.5498000000000001, 8.209399999999995}, {
                    0.5498000000000001, 0.7523999999999944}, {
                    36.796800000000005`, 30.980399999999992`}, {
                    0.5498000000000001, 61.2454}}}]}}, 
                    ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]], 
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098], {
                    Thickness[0.026431741349551847`], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5778000000000001, 
                    53.654399999999995`}, {26.5568, 30.982399999999995`}, {
                    0.5498000000000001, 8.209399999999995}, {
                    0.5498000000000001, 0.7523999999999944}, {
                    36.796800000000005`, 30.980399999999992`}, {
                    0.5498000000000001, 61.2454}}}]}}, 
                    ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]]], "LinkHand"], {
                    "MouseClicked" :> (
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 
                    Clip[TypeSystem`NestedGrid`PackagePrivate`$pos$$ + 20, {
                    1, 1248 - 20 + 1}])}], 
                    EventHandler[
                    MouseAppearance[
                    Mouseover[
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    GrayLevel[0.5]]], 
                    GrayLevel[0.5], {
                    Thickness[0.023255813953488372`], 
                    FaceForm[{
                    RGBColor[0.481, 0.481, 0.481], 
                    Opacity[1.]}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{
                    36.571, 1.031}, {42.440999999999995`, 1.031}, {
                    42.440999999999995`, 60.967}, {36.571, 60.967}}}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5598000000000001, 
                    53.788500000000006`}, {26.5668, 31.015500000000007`}, {
                    0.5878000000000001, 8.343500000000006}, {
                    0.5598000000000001, 0.7525000000000048}, {36.8068, 
                    31.017500000000005`}, {0.5598000000000001, 
                    61.24450000000001}}}]}}, ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]], 
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098], {
                    Thickness[0.023255813953488372`], 
                    FaceForm[{
                    RGBColor[0.481, 0.481, 0.481], 
                    Opacity[1.]}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{
                    36.571, 1.031}, {42.440999999999995`, 1.031}, {
                    42.440999999999995`, 60.967}, {36.571, 60.967}}}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5598000000000001, 
                    53.788500000000006`}, {26.5668, 31.015500000000007`}, {
                    0.5878000000000001, 8.343500000000006}, {
                    0.5598000000000001, 0.7525000000000048}, {36.8068, 
                    31.017500000000005`}, {0.5598000000000001, 
                    61.24450000000001}}}]}}, ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]]], "LinkHand"], {
                    "MouseClicked" :> (
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 
                    Clip[TypeSystem`NestedGrid`PackagePrivate`$pos$$ + 
                    1248 20, {1, 1248 - 20 + 1}])}]}, "   "], 
                  Row[{
                    EventHandler[
                    MouseAppearance[
                    Mouseover[
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    GrayLevel[0.5]]], 
                    GrayLevel[0.5], {
                    Thickness[0.023255813953488372`], 
                    FaceForm[{
                    RGBColor[0.481, 0.481, 0.481], 
                    Opacity[1.]}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{0.56, 
                    1.031}, {6.429, 1.031}, {6.429, 60.967}, {0.56, 
                    60.967}}}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{6.192899999999999, 
                    30.980699999999995`}, {42.4399, 0.7526999999999973}, {
                    42.4399, 8.209699999999994}, {16.432899999999997`, 
                    30.982699999999994`}, {42.4119, 53.6547}, {42.4399, 
                    61.244699999999995`}}}]}}, ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]], 
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098], {
                    Thickness[0.023255813953488372`], 
                    FaceForm[{
                    RGBColor[0.481, 0.481, 0.481], 
                    Opacity[1.]}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{0.56, 
                    1.031}, {6.429, 1.031}, {6.429, 60.967}, {0.56, 
                    60.967}}}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{6.192899999999999, 
                    30.980699999999995`}, {42.4399, 0.7526999999999973}, {
                    42.4399, 8.209699999999994}, {16.432899999999997`, 
                    30.982699999999994`}, {42.4119, 53.6547}, {42.4399, 
                    61.244699999999995`}}}]}}, ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]]], "LinkHand"], {
                    "MouseClicked" :> (
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 
                    Clip[TypeSystem`NestedGrid`PackagePrivate`$pos$$ + 
                    1248 (-20), {1, 1248 - -20 + 1}])}], 
                    EventHandler[
                    MouseAppearance[
                    Mouseover[
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    GrayLevel[0.3]]], 
                    GrayLevel[0.3], {
                    Thickness[0.026431741349551847`], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5499, 30.980699999999995`}, {
                    36.7969, 0.7526999999999973}, {36.7969, 
                    8.209699999999994}, {10.7899, 30.982699999999994`}, {
                    36.7689, 53.6547}, {36.7969, 61.244699999999995`}}}]}}, 
                    ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]], 
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098], {
                    Thickness[0.026431741349551847`], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5499, 30.980699999999995`}, {
                    36.7969, 0.7526999999999973}, {36.7969, 
                    8.209699999999994}, {10.7899, 30.982699999999994`}, {
                    36.7689, 53.6547}, {36.7969, 61.244699999999995`}}}]}}, 
                    ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]]], "LinkHand"], {
                    "MouseClicked" :> (
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 
                    Clip[TypeSystem`NestedGrid`PackagePrivate`$pos$$ - 20, {
                    1, 1248 - -20 + 1}])}], 
                    Pane[
                    Row[{"showing ", 1, "\[Dash]", 20, " of ", 
                    Style[
                    1248, FontColor -> GrayLevel[0], FontWeight -> "Medium"]},
                     BaseStyle -> {
                    FontSize -> 8., FontColor -> 
                    RGBColor[
                    0.5098039215686274, 0.5098039215686274, 
                    0.5098039215686274]}], 150, ContentPadding -> False, 
                    Alignment -> {Center, Center}], 
                    EventHandler[
                    MouseAppearance[
                    Mouseover[
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    GrayLevel[0.3]]], 
                    GrayLevel[0.3], {
                    Thickness[0.026431741349551847`], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5778000000000001, 
                    53.654399999999995`}, {26.5568, 30.982399999999995`}, {
                    0.5498000000000001, 8.209399999999995}, {
                    0.5498000000000001, 0.7523999999999944}, {
                    36.796800000000005`, 30.980399999999992`}, {
                    0.5498000000000001, 61.2454}}}]}}, 
                    ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]], 
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098], {
                    Thickness[0.026431741349551847`], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5778000000000001, 
                    53.654399999999995`}, {26.5568, 30.982399999999995`}, {
                    0.5498000000000001, 8.209399999999995}, {
                    0.5498000000000001, 0.7523999999999944}, {
                    36.796800000000005`, 30.980399999999992`}, {
                    0.5498000000000001, 61.2454}}}]}}, 
                    ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]]], "LinkHand"], {
                    "MouseClicked" :> (
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 
                    Clip[TypeSystem`NestedGrid`PackagePrivate`$pos$$ + 20, {
                    1, 1248 - 20 + 1}])}], 
                    EventHandler[
                    MouseAppearance[
                    Mouseover[
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    GrayLevel[0.5]]], 
                    GrayLevel[0.5], {
                    Thickness[0.023255813953488372`], 
                    FaceForm[{
                    RGBColor[0.481, 0.481, 0.481], 
                    Opacity[1.]}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{
                    36.571, 1.031}, {42.440999999999995`, 1.031}, {
                    42.440999999999995`, 60.967}, {36.571, 60.967}}}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5598000000000001, 
                    53.788500000000006`}, {26.5668, 31.015500000000007`}, {
                    0.5878000000000001, 8.343500000000006}, {
                    0.5598000000000001, 0.7525000000000048}, {36.8068, 
                    31.017500000000005`}, {0.5598000000000001, 
                    61.24450000000001}}}]}}, ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]], 
                    Graphics[{
                    EdgeForm[
                    Directive[
                    Thickness[0.05], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098], {
                    Thickness[0.023255813953488372`], 
                    FaceForm[{
                    RGBColor[0.481, 0.481, 0.481], 
                    Opacity[1.]}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}}}, {{{
                    36.571, 1.031}, {42.440999999999995`, 1.031}, {
                    42.440999999999995`, 60.967}, {36.571, 60.967}}}], 
                    
                    FilledCurve[{{{0, 2, 0}, {0, 1, 0}, {0, 1, 0}, {0, 1, 
                    0}, {0, 1, 0}}}, {{{0.5598000000000001, 
                    53.788500000000006`}, {26.5668, 31.015500000000007`}, {
                    0.5878000000000001, 8.343500000000006}, {
                    0.5598000000000001, 0.7525000000000048}, {36.8068, 
                    31.017500000000005`}, {0.5598000000000001, 
                    61.24450000000001}}}]}}, ImageSize -> {Automatic, 9}, 
                    ImagePadding -> {{1, 1}, {0, 0}}, BaselinePosition -> 
                    Scaled[-0.2]]], "LinkHand"], {
                    "MouseClicked" :> (
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 
                    Clip[TypeSystem`NestedGrid`PackagePrivate`$pos$$ + 
                    1248 20, {1, 1248 - 20 + 1}])}]}, "   "]]], Background -> 
                GrayLevel[0.98], Alignment -> {Left, Top}, 
                BaseStyle -> {ContextMenu -> {
                    MenuItem["Hide", 
                    KernelExecute[
                    
                    TypeSystem`NestedGrid`PackagePrivate`adjustLimits[{
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449}, 
                    1, {}]], MenuEvaluator -> Automatic], 
                    MenuItem["Show up to 10 rows", 
                    KernelExecute[
                    
                    TypeSystem`NestedGrid`PackagePrivate`adjustLimits[{
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449}, 
                    10, {}]], MenuEvaluator -> Automatic], 
                    MenuItem["Show up to 30 rows", 
                    KernelExecute[
                    
                    TypeSystem`NestedGrid`PackagePrivate`adjustLimits[{
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449}, 
                    30, {}]], MenuEvaluator -> Automatic], 
                    MenuItem["Show up to 100 rows", 
                    KernelExecute[
                    
                    TypeSystem`NestedGrid`PackagePrivate`adjustLimits[{
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449}, 
                    100, {}]], MenuEvaluator -> Automatic], 
                    MenuItem["Show all", 
                    KernelExecute[
                    
                    TypeSystem`NestedGrid`PackagePrivate`adjustLimits[{
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449}, 
                    100000000, {}]], MenuEvaluator -> Automatic]}}], 
               SpanFromLeft, SpanFromLeft, SpanFromLeft, SpanFromLeft, 
               SpanFromLeft, SpanFromLeft, SpanFromLeft, SpanFromLeft, 
               SpanFromLeft, SpanFromLeft, SpanFromLeft, SpanFromLeft, 
               SpanFromLeft, SpanFromLeft, SpanFromLeft, SpanFromLeft, 
               SpanFromLeft, SpanFromLeft, SpanFromLeft, SpanFromLeft, 
               SpanFromLeft, SpanFromLeft}}, BaseStyle -> {ContextMenu -> {
                 MenuItem["Copy position to clipboard", 
                  KernelExecute[
                   TypeSystem`NestedGrid`PackagePrivate`toCurrentPosition[
                   TypeSystem`NestedGrid`PackagePrivate`copyClip]], 
                  MenuEvaluator -> Automatic], 
                 MenuItem["Copy data to clipboard", 
                  KernelExecute[
                   TypeSystem`NestedGrid`PackagePrivate`toCurrentData[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`copyClip]], 
                  MenuEvaluator -> Automatic], Delimiter, 
                 MenuItem["Paste position in new cell", 
                  KernelExecute[
                   TypeSystem`NestedGrid`PackagePrivate`toCurrentPosition[
                   TypeSystem`NestedGrid`PackagePrivate`cellPaste]], 
                  MenuEvaluator -> Automatic], 
                 MenuItem["Paste data in new cell", 
                  KernelExecute[
                   TypeSystem`NestedGrid`PackagePrivate`toCurrentData[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`cellPaste]], 
                  MenuEvaluator -> Automatic]}, FontFamily -> "Verdana", 
               FontSize -> 12}, Alignment -> Left, RowMinHeight -> 1.5, 
             Dividers -> All, FrameStyle -> GrayLevel[0.85], 
             BaseStyle -> {FontFamily -> "Verdana", FontSize -> 12}], 
            LineBreakWithin -> False, ContextMenu -> {}, NumberMarks -> False,
             ShowAutoStyles -> False]], 
         TypeSystem`NestedGrid`PackagePrivate`initialQ = True, 
         TypeSystem`NestedGrid`PackagePrivate`self = $Failed}, 
        Dynamic[
         TypeSystem`NestedGrid`PackagePrivate`setupViewPath[
         TypeSystem`NestedGrid`PackagePrivate`$path$$, If[
            Not[TypeSystem`NestedGrid`PackagePrivate`initialQ], 
            
            Module[{TypeSystem`NestedGrid`PackagePrivate`tmpGrid$ = $Failed, 
              TypeSystem`NestedGrid`PackagePrivate`tmpData$ = 
              TypeSystem`NestedGrid`PackagePrivate`LookupCacheValue[
                TypeSystem`NestedGrid`PackagePrivate`$state$$["Data"]]}, 
             TypeSystem`NestedGrid`PackagePrivate`tmpGrid$ = 
              If[TypeSystem`NestedGrid`PackagePrivate`tmpData$ === 
                TypeSystem`NestedGrid`PackagePrivate`$NotCached, 
                TypeSystem`NestedGrid`PackagePrivate`renderedGrid, 
                TypeSystem`NestedGrid`PackagePrivate`renderGrid[
                TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                 TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                 TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                 TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449][
                TypeSystem`NestedGrid`PackagePrivate`tmpData$]]; If[
               Not[
                FailureQ[TypeSystem`NestedGrid`PackagePrivate`tmpGrid$]], 
               TypeSystem`NestedGrid`PackagePrivate`renderedGrid = 
               TypeSystem`NestedGrid`PackagePrivate`tmpGrid$]; Null]]; 
          TypeSystem`NestedGrid`PackagePrivate`initialQ = False; 
          TypeSystem`NestedGrid`PackagePrivate`$pos$$; If[
            FailureQ[TypeSystem`NestedGrid`PackagePrivate`renderedGrid], 
            TypeSystem`SparseGrid[
             TypeSystem`H["(data no longer present)"]], 
            If[GeneralUtilities`$DebugMode, 
             Row[{TypeSystem`NestedGrid`PackagePrivate`renderedGrid, "  ", 
               TypeSystem`NestedGrid`PackagePrivate`formatState[
               TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                TypeSystem`NestedGrid`PackagePrivate`$pos$$]}], 
             TypeSystem`NestedGrid`PackagePrivate`renderedGrid]]], 
         TrackedSymbols :> {TypeSystem`NestedGrid`PackagePrivate`$pos$$}], 
        DynamicModuleValues :> {}], 
      TypeSystem`NestedGrid`PackagePrivate`$posCell$$, 
      TypeSystem`NestedGrid`PackagePrivate`$topBar$$ = Dynamic[
        TypeSystem`NestedGrid`PackagePrivate`alignBar[
        TypeSystem`NestedGrid`PackagePrivate`$state$$][
         TypeSystem`NestedGrid`PackagePrivate`makeFramedBar[
          TypeSystem`PackageScope`Pathbar[
          TypeSystem`NestedGrid`PackagePrivate`$path$$, 
           TypeSystem`NestedGrid`PackagePrivate`updateState[
           TypeSystem`NestedGrid`PackagePrivate`$state$$, 
            TypeSystem`NestedGrid`PackagePrivate`$path$$, 
            TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
            TypeSystem`NestedGrid`PackagePrivate`$grid$$, 362391449]]]], 
        TrackedSymbols :> {TypeSystem`NestedGrid`PackagePrivate`$path$$}], 
      TypeSystem`NestedGrid`PackagePrivate`$bottomBar$$ = Framed[
        Dynamic[
         Replace[
          MouseAnnotation[Null], {
          TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][Null] -> 
           "", TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[362391449][
             Pattern[TypeSystem`NestedGrid`PackagePrivate`path, 
              Blank[]]] :> (
            TypeSystem`NestedGrid`PackagePrivate`$lastPath = 
             TypeSystem`NestedGrid`PackagePrivate`path; 
            TypeSystem`NestedGrid`PackagePrivate`makePathTrail[
             TypeSystem`NestedGrid`PackagePrivate`path, 
              TypeSystem`NestedGrid`PackagePrivate`makePathElements]), Null :> 
           Spacer[10], Blank[] :> Spacer[10]}], TrackedSymbols :> {}], 
        FrameStyle -> None, ImageMargins -> 0, FrameMargins -> 0, Alignment -> 
        Top, ImageSize -> {Automatic, 14}]}, 
     DynamicBox[
      ToBoxes[
       Column[
        If[TypeSystem`NestedGrid`PackagePrivate`$path$$ == {}, {
          TypeSystem`NestedGrid`PackagePrivate`displayScrollBar[
          TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
           TypeSystem`NestedGrid`PackagePrivate`$state$$, 
           TypeSystem`NestedGrid`PackagePrivate`$pos$$], 
          TypeSystem`NestedGrid`PackagePrivate`onDesktopShow[
           TypeSystem`NestedGrid`PackagePrivate`alignBar[
           TypeSystem`NestedGrid`PackagePrivate`$state$$][
           TypeSystem`NestedGrid`PackagePrivate`$bottomBar$$]]}, {
         TypeSystem`NestedGrid`PackagePrivate`$topBar$$, 
          TypeSystem`NestedGrid`PackagePrivate`displayScrollBar[
          TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
           TypeSystem`NestedGrid`PackagePrivate`$state$$, 
           TypeSystem`NestedGrid`PackagePrivate`$pos$$], 
          TypeSystem`NestedGrid`PackagePrivate`onDesktopShow[
           TypeSystem`NestedGrid`PackagePrivate`alignBar[
           TypeSystem`NestedGrid`PackagePrivate`$state$$][
           TypeSystem`NestedGrid`PackagePrivate`$bottomBar$$]]}], Spacings -> 
        If[TypeSystem`NestedGrid`PackagePrivate`$path$$ == {}, 
          0, {{}, {0, 0.05, 0}}]], StandardForm], 
      ImageSizeCache -> {3219., {279., 285.}}, 
      TrackedSymbols :> {
       TypeSystem`NestedGrid`PackagePrivate`$state$$, 
        TypeSystem`NestedGrid`PackagePrivate`$grid$$}], 
     BaseStyle -> {LineBreakWithin -> False}, Deinitialization :> 
     TypeSystem`NestedGrid`PackagePrivate`deleteState[
      TypeSystem`NestedGrid`PackagePrivate`$state$$], 
     DynamicModuleValues :> {}, Initialization :> 
     Block[{$ContextPath = $ContextPath}, 
       Needs["TypeSystem`"]]], Deploy, DefaultBaseStyle -> "Deploy"]},
  "CopyTag",
  DisplayFunction->(#& ),
  InterpretationFunction->("Dataset[<>]"& )]], "Output",ExpressionUUID->\
"ad09aadb-90e3-4a54-9112-8ea30b0df996"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Histograma donde se ve claramente que el mes de mayo fue el de m\[AAcute]s \
tornados\
\>", "Section",ExpressionUUID->"b92861de-81c8-4370-ac4f-ddfad07b3cb8"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"\[IndentingNewLine]", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"Tornados", "[", 
     RowBox[{"CountsBy", "[", "\"\<Month\>\"", "]"}], "]"}], ",", 
    RowBox[{"BarChart", "[", 
     RowBox[{
      RowBox[{"Tornados", "[", 
       RowBox[{"CountsBy", "[", "\"\<Month\>\"", "]"}], "]"}], ",", 
      RowBox[{"ChartLabels", "\[Rule]", "Automatic"}], ",", 
      RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}]}], "}"}]}]], "Input",\
ExpressionUUID->"d5906be2-9370-471c-a78f-1187ae502674"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   TemplateBox[{TagBox[
      DynamicModuleBox[{
       TypeSystem`NestedGrid`PackagePrivate`$state$$ = 
        Data`UnorderedAssociation[
         "RowCount" -> 12, "Length" -> 12, "InitialType" -> TypeSystem`Assoc[
            TypeSystem`Atom[String], 
            TypeSystem`Atom[Integer], 12], "Shape" -> 
          TypeSystem`PackageScope`Limited[
            TypeSystem`PackageScope`ColumnShape[
             TypeSystem`PackageScope`KeyValueShape[
              TypeSystem`PackageScope`AtomShape[67.20000000000002], 
              TypeSystem`PackageScope`AtomShape[34]]], 12, {}], "InitialData" -> 
          TypeSystem`PackageScope`CacheHandle[1976034220], "Type" -> 
          TypeSystem`Assoc[
            TypeSystem`Atom[String], 
            TypeSystem`Atom[Integer], 12], "HandleQ" -> True, "RowTarget" -> 
          20, "Data" -> TypeSystem`PackageScope`CacheHandle[1976034220]], 
        TypeSystem`NestedGrid`PackagePrivate`$path$$ = {}, 
        TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 1, 
        TypeSystem`NestedGrid`PackagePrivate`$grid$$ = 
        DynamicModule[{
          TypeSystem`NestedGrid`PackagePrivate`renderedGrid = Deploy[
             Style[
              Grid[{{
                 Item[
                  Pane[
                   Annotation[
                    EventHandler[
                    MouseAppearance[
                    Mouseover["June", 
                    Style[
                    "June", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                    TypeSystem`NestedGrid`PackagePrivate`updateState[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1874342610][{
                    Key["June"]}]], 
                    TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                    1874342610][
                    GeneralUtilities`Slice[
                    Key["June"]]], "Mouse"], 
                   ImageSize -> {{67.20000000000002, Full}, Automatic}], 
                  Background -> GrayLevel[0.95], 
                  Alignment -> {Left, Baseline}], 
                 Pane[
                  Annotation[
                   RawBoxes["159"], 
                   TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                   1874342610][
                    GeneralUtilities`Slice[
                    Key["June"]]], "Mouse"], 
                  ImageSize -> {{34, Full}, Automatic}, 
                  Alignment -> {Left, Baseline}]}, {
                 Item[
                  Pane[
                   Annotation[
                    EventHandler[
                    MouseAppearance[
                    Mouseover["May", 
                    Style[
                    "May", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                    TypeSystem`NestedGrid`PackagePrivate`updateState[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1874342610][{
                    Key["May"]}]], 
                    TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                    1874342610][
                    GeneralUtilities`Slice[
                    Key["May"]]], "Mouse"], 
                   ImageSize -> {{67.20000000000002, Full}, Automatic}], 
                  Background -> GrayLevel[0.95], 
                  Alignment -> {Left, Baseline}], 
                 Pane[
                  Annotation[
                   RawBoxes["184"], 
                   TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                   1874342610][
                    GeneralUtilities`Slice[
                    Key["May"]]], "Mouse"], 
                  ImageSize -> {{34, Full}, Automatic}, 
                  Alignment -> {Left, Baseline}]}, {
                 Item[
                  Pane[
                   Annotation[
                    EventHandler[
                    MouseAppearance[
                    Mouseover["February", 
                    Style[
                    "February", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                    TypeSystem`NestedGrid`PackagePrivate`updateState[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1874342610][{
                    Key["February"]}]], 
                    TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                    1874342610][
                    GeneralUtilities`Slice[
                    Key["February"]]], "Mouse"], 
                   ImageSize -> {{67.20000000000002, Full}, Automatic}], 
                  Background -> GrayLevel[0.95], 
                  Alignment -> {Left, Baseline}], 
                 Pane[
                  Annotation[
                   RawBoxes["55"], 
                   TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                   1874342610][
                    GeneralUtilities`Slice[
                    Key["February"]]], "Mouse"], 
                  ImageSize -> {{34, Full}, Automatic}, 
                  Alignment -> {Left, Baseline}]}, {
                 Item[
                  Pane[
                   Annotation[
                    EventHandler[
                    MouseAppearance[
                    Mouseover["March", 
                    Style[
                    "March", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                    TypeSystem`NestedGrid`PackagePrivate`updateState[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1874342610][{
                    Key["March"]}]], 
                    TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                    1874342610][
                    GeneralUtilities`Slice[
                    Key["March"]]], "Mouse"], 
                   ImageSize -> {{67.20000000000002, Full}, Automatic}], 
                  Background -> GrayLevel[0.95], 
                  Alignment -> {Left, Baseline}], 
                 Pane[
                  Annotation[
                   RawBoxes["66"], 
                   TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                   1874342610][
                    GeneralUtilities`Slice[
                    Key["March"]]], "Mouse"], 
                  ImageSize -> {{34, Full}, Automatic}, 
                  Alignment -> {Left, Baseline}]}, {
                 Item[
                  Pane[
                   Annotation[
                    EventHandler[
                    MouseAppearance[
                    Mouseover["January", 
                    Style[
                    "January", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                    TypeSystem`NestedGrid`PackagePrivate`updateState[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1874342610][{
                    Key["January"]}]], 
                    TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                    1874342610][
                    GeneralUtilities`Slice[
                    Key["January"]]], "Mouse"], 
                   ImageSize -> {{67.20000000000002, Full}, Automatic}], 
                  Background -> GrayLevel[0.95], 
                  Alignment -> {Left, Baseline}], 
                 Pane[
                  Annotation[
                   RawBoxes["16"], 
                   TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                   1874342610][
                    GeneralUtilities`Slice[
                    Key["January"]]], "Mouse"], 
                  ImageSize -> {{34, Full}, Automatic}, 
                  Alignment -> {Left, Baseline}]}, {
                 Item[
                  Pane[
                   Annotation[
                    EventHandler[
                    MouseAppearance[
                    Mouseover["April", 
                    Style[
                    "April", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                    TypeSystem`NestedGrid`PackagePrivate`updateState[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1874342610][{
                    Key["April"]}]], 
                    TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                    1874342610][
                    GeneralUtilities`Slice[
                    Key["April"]]], "Mouse"], 
                   ImageSize -> {{67.20000000000002, Full}, Automatic}], 
                  Background -> GrayLevel[0.95], 
                  Alignment -> {Left, Baseline}], 
                 Pane[
                  Annotation[
                   RawBoxes["150"], 
                   TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                   1874342610][
                    GeneralUtilities`Slice[
                    Key["April"]]], "Mouse"], 
                  ImageSize -> {{34, Full}, Automatic}, 
                  Alignment -> {Left, Baseline}]}, {
                 Item[
                  Pane[
                   Annotation[
                    EventHandler[
                    MouseAppearance[
                    Mouseover["August", 
                    Style[
                    "August", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                    TypeSystem`NestedGrid`PackagePrivate`updateState[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1874342610][{
                    Key["August"]}]], 
                    TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                    1874342610][
                    GeneralUtilities`Slice[
                    Key["August"]]], "Mouse"], 
                   ImageSize -> {{67.20000000000002, Full}, Automatic}], 
                  Background -> GrayLevel[0.95], 
                  Alignment -> {Left, Baseline}], 
                 Pane[
                  Annotation[
                   RawBoxes["90"], 
                   TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                   1874342610][
                    GeneralUtilities`Slice[
                    Key["August"]]], "Mouse"], 
                  ImageSize -> {{34, Full}, Automatic}, 
                  Alignment -> {Left, Baseline}]}, {
                 Item[
                  Pane[
                   Annotation[
                    EventHandler[
                    MouseAppearance[
                    Mouseover["July", 
                    Style[
                    "July", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                    TypeSystem`NestedGrid`PackagePrivate`updateState[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1874342610][{
                    Key["July"]}]], 
                    TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                    1874342610][
                    GeneralUtilities`Slice[
                    Key["July"]]], "Mouse"], 
                   ImageSize -> {{67.20000000000002, Full}, Automatic}], 
                  Background -> GrayLevel[0.95], 
                  Alignment -> {Left, Baseline}], 
                 Pane[
                  Annotation[
                   RawBoxes["97"], 
                   TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                   1874342610][
                    GeneralUtilities`Slice[
                    Key["July"]]], "Mouse"], 
                  ImageSize -> {{34, Full}, Automatic}, 
                  Alignment -> {Left, Baseline}]}, {
                 Item[
                  Pane[
                   Annotation[
                    EventHandler[
                    MouseAppearance[
                    Mouseover["October", 
                    Style[
                    "October", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                    TypeSystem`NestedGrid`PackagePrivate`updateState[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1874342610][{
                    Key["October"]}]], 
                    TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                    1874342610][
                    GeneralUtilities`Slice[
                    Key["October"]]], "Mouse"], 
                   ImageSize -> {{67.20000000000002, Full}, Automatic}], 
                  Background -> GrayLevel[0.95], 
                  Alignment -> {Left, Baseline}], 
                 Pane[
                  Annotation[
                   RawBoxes["134"], 
                   TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                   1874342610][
                    GeneralUtilities`Slice[
                    Key["October"]]], "Mouse"], 
                  ImageSize -> {{34, Full}, Automatic}, 
                  Alignment -> {Left, Baseline}]}, {
                 Item[
                  Pane[
                   Annotation[
                    EventHandler[
                    MouseAppearance[
                    Mouseover["November", 
                    Style[
                    "November", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                    TypeSystem`NestedGrid`PackagePrivate`updateState[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1874342610][{
                    Key["November"]}]], 
                    TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                    1874342610][
                    GeneralUtilities`Slice[
                    Key["November"]]], "Mouse"], 
                   ImageSize -> {{67.20000000000002, Full}, Automatic}], 
                  Background -> GrayLevel[0.95], 
                  Alignment -> {Left, Baseline}], 
                 Pane[
                  Annotation[
                   RawBoxes["108"], 
                   TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                   1874342610][
                    GeneralUtilities`Slice[
                    Key["November"]]], "Mouse"], 
                  ImageSize -> {{34, Full}, Automatic}, 
                  Alignment -> {Left, Baseline}]}, {
                 Item[
                  Pane[
                   Annotation[
                    EventHandler[
                    MouseAppearance[
                    Mouseover["September", 
                    Style[
                    "September", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                    TypeSystem`NestedGrid`PackagePrivate`updateState[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1874342610][{
                    Key["September"]}]], 
                    TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                    1874342610][
                    GeneralUtilities`Slice[
                    Key["September"]]], "Mouse"], 
                   ImageSize -> {{67.20000000000002, Full}, Automatic}], 
                  Background -> GrayLevel[0.95], 
                  Alignment -> {Left, Baseline}], 
                 Pane[
                  Annotation[
                   RawBoxes["121"], 
                   TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                   1874342610][
                    GeneralUtilities`Slice[
                    Key["September"]]], "Mouse"], 
                  ImageSize -> {{34, Full}, Automatic}, 
                  Alignment -> {Left, Baseline}]}, {
                 Item[
                  Pane[
                   Annotation[
                    EventHandler[
                    MouseAppearance[
                    Mouseover["December", 
                    Style[
                    "December", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                    TypeSystem`NestedGrid`PackagePrivate`updateState[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1874342610][{
                    Key["December"]}]], 
                    TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                    1874342610][
                    GeneralUtilities`Slice[
                    Key["December"]]], "Mouse"], 
                   ImageSize -> {{67.20000000000002, Full}, Automatic}], 
                  Background -> GrayLevel[0.95], 
                  Alignment -> {Left, Baseline}], 
                 Pane[
                  Annotation[
                   RawBoxes["68"], 
                   TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                   1874342610][
                    GeneralUtilities`Slice[
                    Key["December"]]], "Mouse"], 
                  ImageSize -> {{34, Full}, Automatic}, 
                  Alignment -> {Left, Baseline}]}}, BaseStyle -> {ContextMenu -> {
                   MenuItem["Copy position to clipboard", 
                    KernelExecute[
                    TypeSystem`NestedGrid`PackagePrivate`toCurrentPosition[
                    TypeSystem`NestedGrid`PackagePrivate`copyClip]], 
                    MenuEvaluator -> Automatic], 
                   MenuItem["Copy data to clipboard", 
                    KernelExecute[
                    TypeSystem`NestedGrid`PackagePrivate`toCurrentData[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`copyClip]], 
                    MenuEvaluator -> Automatic], Delimiter, 
                   MenuItem["Paste position in new cell", 
                    KernelExecute[
                    TypeSystem`NestedGrid`PackagePrivate`toCurrentPosition[
                    TypeSystem`NestedGrid`PackagePrivate`cellPaste]], 
                    MenuEvaluator -> Automatic], 
                   MenuItem["Paste data in new cell", 
                    KernelExecute[
                    TypeSystem`NestedGrid`PackagePrivate`toCurrentData[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`cellPaste]], 
                    MenuEvaluator -> Automatic]}, FontFamily -> "Verdana", 
                 FontSize -> 12}, Alignment -> Left, RowMinHeight -> 1.5, 
               Dividers -> All, FrameStyle -> GrayLevel[0.85], 
               BaseStyle -> {FontFamily -> "Verdana", FontSize -> 12}], 
              LineBreakWithin -> False, ContextMenu -> {}, NumberMarks -> 
              False, ShowAutoStyles -> False]], 
           TypeSystem`NestedGrid`PackagePrivate`initialQ = True, 
           TypeSystem`NestedGrid`PackagePrivate`self = $Failed}, 
          Dynamic[
           TypeSystem`NestedGrid`PackagePrivate`setupViewPath[
           TypeSystem`NestedGrid`PackagePrivate`$path$$, If[
              Not[TypeSystem`NestedGrid`PackagePrivate`initialQ], 
              
              Module[{TypeSystem`NestedGrid`PackagePrivate`tmpGrid$ = $Failed,
                 TypeSystem`NestedGrid`PackagePrivate`tmpData$ = 
                TypeSystem`NestedGrid`PackagePrivate`LookupCacheValue[
                  TypeSystem`NestedGrid`PackagePrivate`$state$$["Data"]]}, 
               TypeSystem`NestedGrid`PackagePrivate`tmpGrid$ = 
                If[TypeSystem`NestedGrid`PackagePrivate`tmpData$ === 
                  TypeSystem`NestedGrid`PackagePrivate`$NotCached, 
                  TypeSystem`NestedGrid`PackagePrivate`renderedGrid, 
                  TypeSystem`NestedGrid`PackagePrivate`renderGrid[
                  TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                   TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                   TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                   TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1874342610][
                  TypeSystem`NestedGrid`PackagePrivate`tmpData$]]; If[
                 Not[
                  FailureQ[TypeSystem`NestedGrid`PackagePrivate`tmpGrid$]], 
                 TypeSystem`NestedGrid`PackagePrivate`renderedGrid = 
                 TypeSystem`NestedGrid`PackagePrivate`tmpGrid$]; Null]]; 
            TypeSystem`NestedGrid`PackagePrivate`initialQ = False; 
            TypeSystem`NestedGrid`PackagePrivate`$pos$$; If[
              FailureQ[TypeSystem`NestedGrid`PackagePrivate`renderedGrid], 
              TypeSystem`SparseGrid[
               TypeSystem`H["(data no longer present)"]], 
              If[GeneralUtilities`$DebugMode, 
               Row[{TypeSystem`NestedGrid`PackagePrivate`renderedGrid, "  ", 
                 TypeSystem`NestedGrid`PackagePrivate`formatState[
                 TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                  TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                  TypeSystem`NestedGrid`PackagePrivate`$pos$$]}], 
               TypeSystem`NestedGrid`PackagePrivate`renderedGrid]]], 
           TrackedSymbols :> {TypeSystem`NestedGrid`PackagePrivate`$pos$$}], 
          DynamicModuleValues :> {}], 
        TypeSystem`NestedGrid`PackagePrivate`$posCell$$, 
        TypeSystem`NestedGrid`PackagePrivate`$topBar$$ = Dynamic[
          TypeSystem`NestedGrid`PackagePrivate`alignBar[
          TypeSystem`NestedGrid`PackagePrivate`$state$$][
           TypeSystem`NestedGrid`PackagePrivate`makeFramedBar[
            TypeSystem`PackageScope`Pathbar[
            TypeSystem`NestedGrid`PackagePrivate`$path$$, 
             TypeSystem`NestedGrid`PackagePrivate`updateState[
             TypeSystem`NestedGrid`PackagePrivate`$state$$, 
              TypeSystem`NestedGrid`PackagePrivate`$path$$, 
              TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
              TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1874342610]]]], 
          TrackedSymbols :> {TypeSystem`NestedGrid`PackagePrivate`$path$$}], 
        TypeSystem`NestedGrid`PackagePrivate`$bottomBar$$ = Framed[
          Dynamic[
           Replace[
            MouseAnnotation[Null], {
            TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1874342610][
              Null] -> "", 
             TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1874342610][
               Pattern[TypeSystem`NestedGrid`PackagePrivate`path, 
                Blank[]]] :> (
              TypeSystem`NestedGrid`PackagePrivate`$lastPath = 
               TypeSystem`NestedGrid`PackagePrivate`path; 
              TypeSystem`NestedGrid`PackagePrivate`makePathTrail[
               TypeSystem`NestedGrid`PackagePrivate`path, 
                TypeSystem`NestedGrid`PackagePrivate`makePathElements]), Null :> 
             Spacer[10], Blank[] :> Spacer[10]}], TrackedSymbols :> {}], 
          FrameStyle -> None, ImageMargins -> 0, FrameMargins -> 0, Alignment -> 
          Top, ImageSize -> {Automatic, 14}]}, 
       DynamicBox[
        ToBoxes[
         Column[
          If[TypeSystem`NestedGrid`PackagePrivate`$path$$ == {}, {
            TypeSystem`NestedGrid`PackagePrivate`displayScrollBar[
            TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
             TypeSystem`NestedGrid`PackagePrivate`$state$$, 
             TypeSystem`NestedGrid`PackagePrivate`$pos$$], 
            TypeSystem`NestedGrid`PackagePrivate`onDesktopShow[
             TypeSystem`NestedGrid`PackagePrivate`alignBar[
             TypeSystem`NestedGrid`PackagePrivate`$state$$][
             TypeSystem`NestedGrid`PackagePrivate`$bottomBar$$]]}, {
           TypeSystem`NestedGrid`PackagePrivate`$topBar$$, 
            TypeSystem`NestedGrid`PackagePrivate`displayScrollBar[
            TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
             TypeSystem`NestedGrid`PackagePrivate`$state$$, 
             TypeSystem`NestedGrid`PackagePrivate`$pos$$], 
            TypeSystem`NestedGrid`PackagePrivate`onDesktopShow[
             TypeSystem`NestedGrid`PackagePrivate`alignBar[
             TypeSystem`NestedGrid`PackagePrivate`$state$$][
             TypeSystem`NestedGrid`PackagePrivate`$bottomBar$$]]}], Spacings -> 
          If[
           TypeSystem`NestedGrid`PackagePrivate`$path$$ == {}, 
            0, {{}, {0, 0.05, 0}}]], StandardForm], 
        ImageSizeCache -> {123., {155., 161.}}, 
        TrackedSymbols :> {
         TypeSystem`NestedGrid`PackagePrivate`$state$$, 
          TypeSystem`NestedGrid`PackagePrivate`$grid$$}], 
       BaseStyle -> {LineBreakWithin -> False}, Deinitialization :> 
       TypeSystem`NestedGrid`PackagePrivate`deleteState[
        TypeSystem`NestedGrid`PackagePrivate`$state$$], 
       DynamicModuleValues :> {}, Initialization :> 
       Block[{$ContextPath = $ContextPath}, 
         Needs["TypeSystem`"]]], Deploy, DefaultBaseStyle -> "Deploy"]},
    "CopyTag",
    DisplayFunction->(#& ),
    InterpretationFunction->("Dataset[<>]"& )], ",", 
   GraphicsBox[{
     {Opacity[0], 
      PointBox[{{0.31075018208302985`, 0.}, {12.451201747997086`, 0.}}]}, {{}, 
      {RGBColor[0.982864, 0.7431472, 0.3262672], EdgeForm[{Opacity[0.616], 
       Thickness[Small]}], 
       {RGBColor[0.982864, 0.7431472, 0.3262672], EdgeForm[{Opacity[0.616], 
        Thickness[Small]}], 
        TagBox[
         TooltipBox[
          TagBox[
           DynamicBox[{
             FEPrivate`If[
              CurrentValue["MouseOver"], 
              EdgeForm[{
                GrayLevel[0.5], 
                AbsoluteThickness[1.5], 
                Opacity[0.66]}], {}, {}], 
             
             RectangleBox[{0.5487982520029133, 0.}, {1.4512017479970867`, 
              159.}, "RoundingRadius" -> 0]},
            
            ImageSizeCache->{{31.182408257420615`, 
             71.23005796658762}, {-120.13408148872293`, 161.14082976744174`}}],
           StatusArea[#, 159]& ,
           TagBoxNote->"159"],
          StyleBox["159", {}, StripOnInput -> False]],
         Annotation[#, 
          Style[159, {}], "Tooltip"]& ]}, 
       {RGBColor[0.982864, 0.7431472, 0.3262672], EdgeForm[{Opacity[0.616], 
        Thickness[Small]}], 
        TagBox[
         TooltipBox[
          TagBox[
           DynamicBox[{
             FEPrivate`If[
              CurrentValue["MouseOver"], 
              EdgeForm[{
                GrayLevel[0.5], 
                AbsoluteThickness[1.5], 
                Opacity[0.66]}], {}, {}], 
             
             RectangleBox[{1.5487982520029133`, 0.}, {2.4512017479970867`, 
              184.}, "RoundingRadius" -> 0]},
            
            ImageSizeCache->{{75.00720490849913, 
             115.05485461766615`}, {-164.281080113906, 161.14082976744174`}}],
           StatusArea[#, 184]& ,
           TagBoxNote->"184"],
          StyleBox["184", {}, StripOnInput -> False]],
         Annotation[#, 
          Style[184, {}], "Tooltip"]& ]}, 
       {RGBColor[0.982864, 0.7431472, 0.3262672], EdgeForm[{Opacity[0.616], 
        Thickness[Small]}], 
        TagBox[
         TooltipBox[
          TagBox[
           DynamicBox[{
             FEPrivate`If[
              CurrentValue["MouseOver"], 
              EdgeForm[{
                GrayLevel[0.5], 
                AbsoluteThickness[1.5], 
                Opacity[0.66]}], {}, {}], 
             
             RectangleBox[{2.5487982520029133`, 0.}, {3.4512017479970867`, 
              55.}, "RoundingRadius" -> 0]},
            
            ImageSizeCache->{{118.83200155957766`, 158.87965126874468`}, {
             63.517432792038875`, 161.14082976744174`}}],
           StatusArea[#, 55]& ,
           TagBoxNote->"55"],
          StyleBox["55", {}, StripOnInput -> False]],
         Annotation[#, 
          Style[55, {}], "Tooltip"]& ]}, 
       {RGBColor[0.982864, 0.7431472, 0.3262672], EdgeForm[{Opacity[0.616], 
        Thickness[Small]}], 
        TagBox[
         TooltipBox[
          TagBox[
           DynamicBox[{
             FEPrivate`If[
              CurrentValue["MouseOver"], 
              EdgeForm[{
                GrayLevel[0.5], 
                AbsoluteThickness[1.5], 
                Opacity[0.66]}], {}, {}], 
             RectangleBox[{3.5487982520029133`, 0.}, {4.451201747997087, 66.},
               "RoundingRadius" -> 0]},
            
            ImageSizeCache->{{162.6567982106562, 202.7044479198232}, {
             44.0927533969583, 161.14082976744174`}}],
           StatusArea[#, 66]& ,
           TagBoxNote->"66"],
          StyleBox["66", {}, StripOnInput -> False]],
         Annotation[#, 
          Style[66, {}], "Tooltip"]& ]}, 
       {RGBColor[0.982864, 0.7431472, 0.3262672], EdgeForm[{Opacity[0.616], 
        Thickness[Small]}], 
        TagBox[
         TooltipBox[
          TagBox[
           DynamicBox[{
             FEPrivate`If[
              CurrentValue["MouseOver"], 
              EdgeForm[{
                GrayLevel[0.5], 
                AbsoluteThickness[1.5], 
                Opacity[0.66]}], {}, {}], 
             
             RectangleBox[{4.548798252002913, 0.}, {5.451201747997087, 16.}, 
              "RoundingRadius" -> 0]},
            
            ImageSizeCache->{{206.48159486173472`, 246.52924457090174`}, {
             132.38675064732456`, 161.14082976744174`}}],
           StatusArea[#, 16]& ,
           TagBoxNote->"16"],
          StyleBox["16", {}, StripOnInput -> False]],
         Annotation[#, 
          Style[16, {}], "Tooltip"]& ]}, 
       {RGBColor[0.982864, 0.7431472, 0.3262672], EdgeForm[{Opacity[0.616], 
        Thickness[Small]}], 
        TagBox[
         TooltipBox[
          TagBox[
           DynamicBox[{
             FEPrivate`If[
              CurrentValue["MouseOver"], 
              EdgeForm[{
                GrayLevel[0.5], 
                AbsoluteThickness[1.5], 
                Opacity[0.66]}], {}, {}], 
             
             RectangleBox[{5.548798252002913, 0.}, {6.451201747997087, 150.}, 
              "RoundingRadius" -> 0]},
            
            ImageSizeCache->{{250.30639151281326`, 
             290.3540412219803}, {-104.24116198365698`, 161.14082976744174`}}],
           StatusArea[#, 150]& ,
           TagBoxNote->"150"],
          StyleBox["150", {}, StripOnInput -> False]],
         Annotation[#, 
          Style[150, {}], "Tooltip"]& ]}, 
       {RGBColor[0.982864, 0.7431472, 0.3262672], EdgeForm[{Opacity[0.616], 
        Thickness[Small]}], 
        TagBox[
         TooltipBox[
          TagBox[
           DynamicBox[{
             FEPrivate`If[
              CurrentValue["MouseOver"], 
              EdgeForm[{
                GrayLevel[0.5], 
                AbsoluteThickness[1.5], 
                Opacity[0.66]}], {}, {}], 
             
             RectangleBox[{6.548798252002913, 0.}, {7.451201747997087, 90.}, 
              "RoundingRadius" -> 0]},
            
            ImageSizeCache->{{294.1311881638918, 334.1788378730588}, {
             1.7116347167824983`, 161.14082976744174`}}],
           StatusArea[#, 90]& ,
           TagBoxNote->"90"],
          StyleBox["90", {}, StripOnInput -> False]],
         Annotation[#, 
          Style[90, {}], "Tooltip"]& ]}, 
       {RGBColor[0.982864, 0.7431472, 0.3262672], EdgeForm[{Opacity[0.616], 
        Thickness[Small]}], 
        TagBox[
         TooltipBox[
          TagBox[
           DynamicBox[{
             FEPrivate`If[
              CurrentValue["MouseOver"], 
              EdgeForm[{
                GrayLevel[0.5], 
                AbsoluteThickness[1.5], 
                Opacity[0.66]}], {}, {}], 
             
             RectangleBox[{7.548798252002913, 0.}, {8.451201747997086, 97.}, 
              "RoundingRadius" -> 0]},
            
            ImageSizeCache->{{337.95598481497035`, 
             378.0036345241373}, {-10.649524898268766`, 161.14082976744174`}}],
           StatusArea[#, 97]& ,
           TagBoxNote->"97"],
          StyleBox["97", {}, StripOnInput -> False]],
         Annotation[#, 
          Style[97, {}], "Tooltip"]& ]}, 
       {RGBColor[0.982864, 0.7431472, 0.3262672], EdgeForm[{Opacity[0.616], 
        Thickness[Small]}], 
        TagBox[
         TooltipBox[
          TagBox[
           DynamicBox[{
             FEPrivate`If[
              CurrentValue["MouseOver"], 
              EdgeForm[{
                GrayLevel[0.5], 
                AbsoluteThickness[1.5], 
                Opacity[0.66]}], {}, {}], 
             
             RectangleBox[{8.548798252002912, 0.}, {9.451201747997086, 134.}, 
              "RoundingRadius" -> 0]},
            
            ImageSizeCache->{{381.78078146604884`, 
             421.8284311752158}, {-75.98708286353977, 161.14082976744174`}}],
           StatusArea[#, 134]& ,
           TagBoxNote->"134"],
          StyleBox["134", {}, StripOnInput -> False]],
         Annotation[#, 
          Style[134, {}], "Tooltip"]& ]}, 
       {RGBColor[0.982864, 0.7431472, 0.3262672], EdgeForm[{Opacity[0.616], 
        Thickness[Small]}], 
        TagBox[
         TooltipBox[
          TagBox[
           DynamicBox[{
             FEPrivate`If[
              CurrentValue["MouseOver"], 
              EdgeForm[{
                GrayLevel[0.5], 
                AbsoluteThickness[1.5], 
                Opacity[0.66]}], {}, {}], 
             
             RectangleBox[{9.548798252002912, 0.}, {10.451201747997086`, 
              108.}, "RoundingRadius" -> 0]},
            
            ImageSizeCache->{{425.6055781171274, 
             465.65322782629437`}, {-30.07420429334934, 161.14082976744174`}}],
           StatusArea[#, 108]& ,
           TagBoxNote->"108"],
          StyleBox["108", {}, StripOnInput -> False]],
         Annotation[#, 
          Style[108, {}], "Tooltip"]& ]}, 
       {RGBColor[0.982864, 0.7431472, 0.3262672], EdgeForm[{Opacity[0.616], 
        Thickness[Small]}], 
        TagBox[
         TooltipBox[
          TagBox[
           DynamicBox[{
             FEPrivate`If[
              CurrentValue["MouseOver"], 
              EdgeForm[{
                GrayLevel[0.5], 
                AbsoluteThickness[1.5], 
                Opacity[0.66]}], {}, {}], 
             
             RectangleBox[{10.548798252002912`, 0.}, {11.451201747997086`, 
              121.}, "RoundingRadius" -> 0]},
            
            ImageSizeCache->{{469.43037476820587`, 
             509.4780244773729}, {-53.03064357844457, 161.14082976744174`}}],
           StatusArea[#, 121]& ,
           TagBoxNote->"121"],
          StyleBox["121", {}, StripOnInput -> False]],
         Annotation[#, 
          Style[121, {}], "Tooltip"]& ]}, 
       {RGBColor[0.982864, 0.7431472, 0.3262672], EdgeForm[{Opacity[0.616], 
        Thickness[Small]}], 
        TagBox[
         TooltipBox[
          TagBox[
           DynamicBox[{
             FEPrivate`If[
              CurrentValue["MouseOver"], 
              EdgeForm[{
                GrayLevel[0.5], 
                AbsoluteThickness[1.5], 
                Opacity[0.66]}], {}, {}], 
             
             RectangleBox[{11.548798252002912`, 0.}, {12.451201747997086`, 
              68.}, "RoundingRadius" -> 0]},
            
            ImageSizeCache->{{513.2551714192844, 553.3028211284513}, {
             40.56099350694366, 161.14082976744174`}}],
           StatusArea[#, 68]& ,
           TagBoxNote->"68"],
          StyleBox["68", {}, StripOnInput -> False]],
         Annotation[#, 
          Style[68, {}], "Tooltip"]& ]}}, {}, {}}, {}, {}, {}, {}, 
     StyleBox[{
       {Thickness[Tiny], 
        LineBox[{{0.31075018208302985`, 0.}, {12.694010779315366`, 0.}}], 
        StyleBox[{}, "GraphicsLabel",
         StripOnInput->False]}, 
       StyleBox[{
         {Thickness[Tiny], 
          LineBox[{{0.5487982520029133, 0.}, 
            Offset[{-1.102182119232618*^-15, -6.}, {0.5487982520029133, 
             0.}]}], LineBox[{{12.451201747997086`, 0.}, 
            Offset[{-1.102182119232618*^-15, -6.}, {12.451201747997086`, 
             0.}]}], {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {
            LineBox[{{1.4512017479970867`, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {1.4512017479970867`, 
               0.}]}], 
            LineBox[{{1.5487982520029133`, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {1.5487982520029133`, 
               0.}]}], 
            LineBox[{{2.4512017479970867`, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {2.4512017479970867`, 
               0.}]}], 
            LineBox[{{2.5487982520029133`, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {2.5487982520029133`, 
               0.}]}], 
            LineBox[{{3.4512017479970867`, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {3.4512017479970867`, 
               0.}]}], 
            LineBox[{{3.5487982520029133`, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {3.5487982520029133`, 
               0.}]}], 
            LineBox[{{4.451201747997087, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {4.451201747997087, 
               0.}]}], 
            LineBox[{{4.548798252002913, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {4.548798252002913, 
               0.}]}], 
            LineBox[{{5.451201747997087, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {5.451201747997087, 
               0.}]}], 
            LineBox[{{5.548798252002913, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {5.548798252002913, 
               0.}]}], 
            LineBox[{{6.451201747997087, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {6.451201747997087, 
               0.}]}], 
            LineBox[{{6.548798252002913, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {6.548798252002913, 
               0.}]}], 
            LineBox[{{7.451201747997087, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {7.451201747997087, 
               0.}]}], 
            LineBox[{{7.548798252002913, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {7.548798252002913, 
               0.}]}], 
            LineBox[{{8.451201747997086, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {8.451201747997086, 
               0.}]}], 
            LineBox[{{8.548798252002912, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {8.548798252002912, 
               0.}]}], 
            LineBox[{{9.451201747997086, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {9.451201747997086, 
               0.}]}], 
            LineBox[{{9.54879825200291, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {9.54879825200291, 
               0.}]}], 
            LineBox[{{10.451201747997086`, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {10.451201747997086`, 
               0.}]}], 
            LineBox[{{10.54879825200291, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {10.54879825200291, 
               0.}]}], 
            LineBox[{{11.451201747997086`, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {11.451201747997086`, 
               0.}]}], 
            LineBox[{{11.54879825200291, 0.}, 
              Offset[{-7.347880794884119*^-16, -4.}, {11.54879825200291, 
               0.}]}]}, {}}}, 
         StyleBox[
          {Thickness[Tiny], 
           InsetBox["\<\"June\"\>", Offset[{0, -2}, {1., 0.}], {0, 1}, 
            Automatic, {1, 0}], 
           InsetBox["\<\"May\"\>", Offset[{0, -2}, {2., 0.}], {0, 1}, 
            Automatic, {1, 0}], 
           InsetBox["\<\"February\"\>", Offset[{0, -2}, {3., 0.}], {0, 1}, 
            Automatic, {1, 0}], 
           InsetBox["\<\"March\"\>", Offset[{0, -2}, {4., 0.}], {0, 1}, 
            Automatic, {1, 0}], 
           InsetBox["\<\"January\"\>", Offset[{0, -2}, {5., 0.}], {0, 1}, 
            Automatic, {1, 0}], 
           InsetBox["\<\"April\"\>", Offset[{0, -2}, {6., 0.}], {0, 1}, 
            Automatic, {1, 0}], 
           InsetBox["\<\"August\"\>", Offset[{0, -2}, {7., 0.}], {0, 1}, 
            Automatic, {1, 0}], 
           InsetBox["\<\"July\"\>", 
            Offset[{0, -2}, {7.999999999999999, 0.}], {0, 1}, Automatic, {1, 
            0}], InsetBox["\<\"October\"\>", Offset[{0, -2}, {9., 0.}], {0, 1},
             Automatic, {1, 0}], 
           InsetBox["\<\"November\"\>", Offset[{0, -2}, {10., 0.}], {0, 1}, 
            Automatic, {1, 0}], 
           InsetBox["\<\"September\"\>", Offset[{0, -2}, {11., 0.}], {0, 1}, 
            Automatic, {1, 0}], 
           InsetBox["\<\"December\"\>", Offset[{0, -2}, {12., 0.}], {0, 1}, 
            Automatic, {1, 0}]}, "GraphicsLabel",
          StripOnInput->False]}, "GraphicsTicks",
        StripOnInput->False]}, "GraphicsAxes",
      StripOnInput->False,
      Antialiasing->False]},
    AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
    Axes->{False, True},
    AxesLabel->{None, None},
    AxesOrigin->{0.31075018208302985`, 0.},
    CoordinatesToolOptions:>{"DisplayFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        Identity[
         Part[#, 1]], 
        Identity[
         Part[#, 2]]}& )},
    DisplayFunction->Identity,
    FrameLabel->{{None, None}, {None, None}},
    FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
    GridLines->{None, None},
    GridLinesStyle->Directive[
      GrayLevel[0.5, 0.4]],
    ImageSize->Large,
    PlotRange->{{All, All}, {All, All}},
    PlotRangePadding->{{
       Scaled[0.02], 
       Scaled[0.02]}, {
       Scaled[0.02], 
       Scaled[0.05]}},
    Ticks->{None, Automatic}]}], "}"}]], "Output",ExpressionUUID->"0ab71345-\
f5b4-4635-b146-70404f4d4323"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Los tres primeros eventos que m\[AAcute]s se repiten son:", "Section",ExpressionUUID->"cb93fc7f-918b-447a-a778-b8aeba4f8a6e"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"TakeLargest", "[", 
  RowBox[{
   RowBox[{"datas", "[", 
    RowBox[{"CountsBy", "[", "\"\<Event_Type\>\"", "]"}], "]"}], ",", "3"}], 
  "]"}]], "Input",ExpressionUUID->"e8f53b84-7451-432f-bf25-0a20f55d3c5e"],

Cell[BoxData[
 TemplateBox[{TagBox[
    DynamicModuleBox[{
     TypeSystem`NestedGrid`PackagePrivate`$state$$ = 
      Data`UnorderedAssociation[
       "RowCount" -> 3, "Length" -> 3, "InitialType" -> TypeSystem`Assoc[
          TypeSystem`Atom[String], 
          TypeSystem`Atom[Integer], 3], "Shape" -> 
        TypeSystem`PackageScope`Limited[
          TypeSystem`PackageScope`ColumnShape[
           TypeSystem`PackageScope`KeyValueShape[
            TypeSystem`PackageScope`AtomShape[163.20000000000002`], 
            TypeSystem`PackageScope`AtomShape[34]]], 3, {}], "InitialData" -> 
        TypeSystem`PackageScope`CacheHandle[963759986], "Type" -> 
        TypeSystem`Assoc[
          TypeSystem`Atom[String], 
          TypeSystem`Atom[Integer], 3], "HandleQ" -> True, "RowTarget" -> 20, 
        "Data" -> TypeSystem`PackageScope`CacheHandle[963759986]], 
      TypeSystem`NestedGrid`PackagePrivate`$path$$ = {}, 
      TypeSystem`NestedGrid`PackagePrivate`$pos$$ = 1, 
      TypeSystem`NestedGrid`PackagePrivate`$grid$$ = 
      DynamicModule[{
        TypeSystem`NestedGrid`PackagePrivate`renderedGrid = Deploy[
           Style[
            Grid[{{
               Item[
                Pane[
                 Annotation[
                  EventHandler[
                   MouseAppearance[
                    Mouseover["Thunderstorm Wind", 
                    Style[
                    "Thunderstorm Wind", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                   TypeSystem`NestedGrid`PackagePrivate`updateState[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1758392986][{
                    Key["Thunderstorm Wind"]}]], 
                  TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                  1758392986][
                   GeneralUtilities`Slice[
                    Key["Thunderstorm Wind"]]], "Mouse"], 
                 ImageSize -> {{163.20000000000002`, Full}, Automatic}], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["14585"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1758392986][
                  GeneralUtilities`Slice[
                   Key["Thunderstorm Wind"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Item[
                Pane[
                 Annotation[
                  EventHandler[
                   MouseAppearance[
                    Mouseover["Hail", 
                    Style[
                    "Hail", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                   TypeSystem`NestedGrid`PackagePrivate`updateState[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1758392986][{
                    Key["Hail"]}]], 
                  TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                  1758392986][
                   GeneralUtilities`Slice[
                    Key["Hail"]]], "Mouse"], 
                 ImageSize -> {{163.20000000000002`, Full}, Automatic}], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["7861"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1758392986][
                  GeneralUtilities`Slice[
                   Key["Hail"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}, {
               Item[
                Pane[
                 Annotation[
                  EventHandler[
                   MouseAppearance[
                    Mouseover["Flood", 
                    Style[
                    "Flood", FontColor -> 
                    RGBColor[
                    0.27450980392156865`, 0.5372549019607843, 
                    0.792156862745098]]], "LinkHand"], {"MouseClicked", 1} :> 
                   TypeSystem`NestedGrid`PackagePrivate`updateState[
                    TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                    TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1758392986][{
                    Key["Flood"]}]], 
                  TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[
                  1758392986][
                   GeneralUtilities`Slice[
                    Key["Flood"]]], "Mouse"], 
                 ImageSize -> {{163.20000000000002`, Full}, Automatic}], 
                Background -> GrayLevel[0.95], Alignment -> {Left, Baseline}], 
               Pane[
                Annotation[
                 RawBoxes["4715"], 
                 TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1758392986][
                  GeneralUtilities`Slice[
                   Key["Flood"]]], "Mouse"], 
                ImageSize -> {{34, Full}, Automatic}, 
                Alignment -> {Left, Baseline}]}}, BaseStyle -> {ContextMenu -> {
                 MenuItem["Copy position to clipboard", 
                  KernelExecute[
                   TypeSystem`NestedGrid`PackagePrivate`toCurrentPosition[
                   TypeSystem`NestedGrid`PackagePrivate`copyClip]], 
                  MenuEvaluator -> Automatic], 
                 MenuItem["Copy data to clipboard", 
                  KernelExecute[
                   TypeSystem`NestedGrid`PackagePrivate`toCurrentData[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`copyClip]], 
                  MenuEvaluator -> Automatic], Delimiter, 
                 MenuItem["Paste position in new cell", 
                  KernelExecute[
                   TypeSystem`NestedGrid`PackagePrivate`toCurrentPosition[
                   TypeSystem`NestedGrid`PackagePrivate`cellPaste]], 
                  MenuEvaluator -> Automatic], 
                 MenuItem["Paste data in new cell", 
                  KernelExecute[
                   TypeSystem`NestedGrid`PackagePrivate`toCurrentData[
                   TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                    TypeSystem`NestedGrid`PackagePrivate`cellPaste]], 
                  MenuEvaluator -> Automatic]}, FontFamily -> "Verdana", 
               FontSize -> 12}, Alignment -> Left, RowMinHeight -> 1.5, 
             Dividers -> All, FrameStyle -> GrayLevel[0.85], 
             BaseStyle -> {FontFamily -> "Verdana", FontSize -> 12}], 
            LineBreakWithin -> False, ContextMenu -> {}, NumberMarks -> False,
             ShowAutoStyles -> False]], 
         TypeSystem`NestedGrid`PackagePrivate`initialQ = True, 
         TypeSystem`NestedGrid`PackagePrivate`self = $Failed}, 
        Dynamic[
         TypeSystem`NestedGrid`PackagePrivate`setupViewPath[
         TypeSystem`NestedGrid`PackagePrivate`$path$$, If[
            Not[TypeSystem`NestedGrid`PackagePrivate`initialQ], 
            
            Module[{TypeSystem`NestedGrid`PackagePrivate`tmpGrid$ = $Failed, 
              TypeSystem`NestedGrid`PackagePrivate`tmpData$ = 
              TypeSystem`NestedGrid`PackagePrivate`LookupCacheValue[
                TypeSystem`NestedGrid`PackagePrivate`$state$$["Data"]]}, 
             TypeSystem`NestedGrid`PackagePrivate`tmpGrid$ = 
              If[TypeSystem`NestedGrid`PackagePrivate`tmpData$ === 
                TypeSystem`NestedGrid`PackagePrivate`$NotCached, 
                TypeSystem`NestedGrid`PackagePrivate`renderedGrid, 
                TypeSystem`NestedGrid`PackagePrivate`renderGrid[
                TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                 TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                 TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
                 TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1758392986][
                TypeSystem`NestedGrid`PackagePrivate`tmpData$]]; If[
               Not[
                FailureQ[TypeSystem`NestedGrid`PackagePrivate`tmpGrid$]], 
               TypeSystem`NestedGrid`PackagePrivate`renderedGrid = 
               TypeSystem`NestedGrid`PackagePrivate`tmpGrid$]; Null]]; 
          TypeSystem`NestedGrid`PackagePrivate`initialQ = False; 
          TypeSystem`NestedGrid`PackagePrivate`$pos$$; If[
            FailureQ[TypeSystem`NestedGrid`PackagePrivate`renderedGrid], 
            TypeSystem`SparseGrid[
             TypeSystem`H["(data no longer present)"]], 
            If[GeneralUtilities`$DebugMode, 
             Row[{TypeSystem`NestedGrid`PackagePrivate`renderedGrid, "  ", 
               TypeSystem`NestedGrid`PackagePrivate`formatState[
               TypeSystem`NestedGrid`PackagePrivate`$state$$, 
                TypeSystem`NestedGrid`PackagePrivate`$path$$, 
                TypeSystem`NestedGrid`PackagePrivate`$pos$$]}], 
             TypeSystem`NestedGrid`PackagePrivate`renderedGrid]]], 
         TrackedSymbols :> {TypeSystem`NestedGrid`PackagePrivate`$pos$$}], 
        DynamicModuleValues :> {}], 
      TypeSystem`NestedGrid`PackagePrivate`$posCell$$, 
      TypeSystem`NestedGrid`PackagePrivate`$topBar$$ = Dynamic[
        TypeSystem`NestedGrid`PackagePrivate`alignBar[
        TypeSystem`NestedGrid`PackagePrivate`$state$$][
         TypeSystem`NestedGrid`PackagePrivate`makeFramedBar[
          TypeSystem`PackageScope`Pathbar[
          TypeSystem`NestedGrid`PackagePrivate`$path$$, 
           TypeSystem`NestedGrid`PackagePrivate`updateState[
           TypeSystem`NestedGrid`PackagePrivate`$state$$, 
            TypeSystem`NestedGrid`PackagePrivate`$path$$, 
            TypeSystem`NestedGrid`PackagePrivate`$pos$$, 
            TypeSystem`NestedGrid`PackagePrivate`$grid$$, 1758392986]]]], 
        TrackedSymbols :> {TypeSystem`NestedGrid`PackagePrivate`$path$$}], 
      TypeSystem`NestedGrid`PackagePrivate`$bottomBar$$ = Framed[
        Dynamic[
         Replace[
          MouseAnnotation[Null], {
          TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1758392986][Null] -> 
           "", TypeSystem`NestedGrid`PackagePrivate`$SliceMarker[1758392986][
             Pattern[TypeSystem`NestedGrid`PackagePrivate`path, 
              Blank[]]] :> (
            TypeSystem`NestedGrid`PackagePrivate`$lastPath = 
             TypeSystem`NestedGrid`PackagePrivate`path; 
            TypeSystem`NestedGrid`PackagePrivate`makePathTrail[
             TypeSystem`NestedGrid`PackagePrivate`path, 
              TypeSystem`NestedGrid`PackagePrivate`makePathElements]), Null :> 
           Spacer[10], Blank[] :> Spacer[10]}], TrackedSymbols :> {}], 
        FrameStyle -> None, ImageMargins -> 0, FrameMargins -> 0, Alignment -> 
        Top, ImageSize -> {Automatic, 14}]}, 
     DynamicBox[
      ToBoxes[
       Column[
        If[TypeSystem`NestedGrid`PackagePrivate`$path$$ == {}, {
          TypeSystem`NestedGrid`PackagePrivate`displayScrollBar[
          TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
           TypeSystem`NestedGrid`PackagePrivate`$state$$, 
           TypeSystem`NestedGrid`PackagePrivate`$pos$$], 
          TypeSystem`NestedGrid`PackagePrivate`onDesktopShow[
           TypeSystem`NestedGrid`PackagePrivate`alignBar[
           TypeSystem`NestedGrid`PackagePrivate`$state$$][
           TypeSystem`NestedGrid`PackagePrivate`$bottomBar$$]]}, {
         TypeSystem`NestedGrid`PackagePrivate`$topBar$$, 
          TypeSystem`NestedGrid`PackagePrivate`displayScrollBar[
          TypeSystem`NestedGrid`PackagePrivate`$grid$$, 
           TypeSystem`NestedGrid`PackagePrivate`$state$$, 
           TypeSystem`NestedGrid`PackagePrivate`$pos$$], 
          TypeSystem`NestedGrid`PackagePrivate`onDesktopShow[
           TypeSystem`NestedGrid`PackagePrivate`alignBar[
           TypeSystem`NestedGrid`PackagePrivate`$state$$][
           TypeSystem`NestedGrid`PackagePrivate`$bottomBar$$]]}], Spacings -> 
        If[TypeSystem`NestedGrid`PackagePrivate`$path$$ == {}, 
          0, {{}, {0, 0.05, 0}}]], StandardForm], 
      ImageSizeCache -> {226., {42., 48.}}, 
      TrackedSymbols :> {
       TypeSystem`NestedGrid`PackagePrivate`$state$$, 
        TypeSystem`NestedGrid`PackagePrivate`$grid$$}], 
     BaseStyle -> {LineBreakWithin -> False}, Deinitialization :> 
     TypeSystem`NestedGrid`PackagePrivate`deleteState[
      TypeSystem`NestedGrid`PackagePrivate`$state$$], 
     DynamicModuleValues :> {}, Initialization :> 
     Block[{$ContextPath = $ContextPath}, 
       Needs["TypeSystem`"]]], Deploy, DefaultBaseStyle -> "Deploy"]},
  "CopyTag",
  DisplayFunction->(#& ),
  InterpretationFunction->("Dataset[<>]"& )]], "Output",ExpressionUUID->\
"d4459548-9b12-4897-9d1e-1062fc40ae3d"]
}, Open  ]]
}, Open  ]],

Cell["Ejercicio HW1", "Section",ExpressionUUID->"5d9b5491-4749-4abf-b651-5be074256aaf"],

Cell[CellGroupData[{

Cell["Importaci\[OAcute]n de datos", "Subchapter",ExpressionUUID->"12e92a4a-4295-4238-b4e6-ae970592c94f"],

Cell[BoxData[
 RowBox[{
  RowBox[{"datos", " ", "=", " ", 
   RowBox[{"Import", "[", 
    RowBox[{
     RowBox[{"FileNameJoin", "[", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"NotebookDirectory", "[", "]"}], ",", "\"\<hw1.csv\>\""}], 
       "}"}], "]"}], ",", "\"\<Data\>\""}], "]"}]}], ";"}]], "Input",Expressio\
nUUID->"a09eb1bc-80e8-4a39-8223-d87ffcd2472f"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Short", "[", 
  RowBox[{
   RowBox[{"Partition", "[", 
    RowBox[{
     RowBox[{"Map", "[", 
      RowBox[{"Head", ",", 
       RowBox[{"Flatten", "[", 
        RowBox[{"Rest", "[", "datos", "]"}], "]"}]}], "]"}], ",", 
     RowBox[{"Length", "[", 
      RowBox[{"datos", "[", 
       RowBox[{"[", "2", "]"}], "]"}], "]"}]}], "]"}], ",", "2"}], 
  "]"}]], "Input",ExpressionUUID->"cd817e6d-df19-48ac-b735-43accc17d68f"],

Cell[BoxData[
 TagBox[
  RowBox[{"{", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "String", ",", "Integer", ",", "Integer", ",", "Integer", ",", "String", 
      ",", "String", ",", "String", ",", "String", ",", "String", ",", 
      "String", ",", "String"}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{
     "String", ",", "Integer", ",", "Integer", ",", "Integer", ",", "String", 
      ",", "String", ",", "String", ",", "String", ",", "String", ",", 
      "String", ",", "String"}], "}"}], ",", 
    RowBox[{"\[LeftSkeleton]", "569", "\[RightSkeleton]"}], ",", 
    RowBox[{"{", 
     RowBox[{
     "String", ",", "Integer", ",", "Integer", ",", "Integer", ",", "String", 
      ",", "String", ",", "String", ",", "String", ",", "String", ",", 
      "String", ",", "String"}], "}"}]}], "}"}],
  Short[#, 2]& ]], "Output",ExpressionUUID->"876b1c8a-36e5-4cc9-a8ba-\
57b0aacaa30e"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Convierto los datos string a n\[UAcute]meros", "Section",ExpressionUUID->"dcc52010-c420-476c-85b7-2b71fd09eb0d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"w", "=", 
   RowBox[{"Partition", "[", 
    RowBox[{
     RowBox[{"Map", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"ToExpression", "[", 
         RowBox[{"ToExpression", "[", "#", "]"}], "]"}], "&"}], ",", 
       RowBox[{"Flatten", "[", 
        RowBox[{"datos", "[", 
         RowBox[{"[", 
          RowBox[{
           RowBox[{"2", ";;"}], ",", 
           RowBox[{"5", ";;"}]}], "]"}], "]"}], "]"}]}], "]"}], ",", 
     RowBox[{"Length", "[", 
      RowBox[{"datos", "[", 
       RowBox[{"[", 
        RowBox[{"2", ",", 
         RowBox[{"5", ";;"}]}], "]"}], "]"}], "]"}]}], "]"}]}], 
  ";"}]], "Input",ExpressionUUID->"b9f69ff9-6fce-47b3-9689-b5ef65f0b68b"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"datos", "[", 
  RowBox[{"[", 
   RowBox[{"2", ",", 
    RowBox[{"5", ";;"}]}], "]"}], "]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"tr", "=", 
   RowBox[{"Transpose", "[", "w", "]"}]}], ";"}]}], "Input",ExpressionUUID->\
"2ee21aa0-793b-4f7e-9cb3-87a0102d46d4"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"\<\"\\\"75\\\"\"\>", ",", "\<\"\\\"226\\\"\"\>", 
   ",", "\<\"\\\"7823\\\"\"\>", ",", "\<\"\\\"672\\\"\"\>", 
   ",", "\<\"\\\"36\\\"\"\>", ",", "\<\"\\\"60\\\"\"\>", 
   ",", "\<\"\\\"29\\\"\"\>"}], "}"}]], "Output",ExpressionUUID->"7ef3ca2d-\
9702-4dfd-8599-b916c71ac9fa"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Gr\[AAcute]fica de 5 a 11", "Section",ExpressionUUID->"74c4ff09-370e-41b1-89b4-75fb8e1db1e1"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", 
  RowBox[{"tr", ",", 
   RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
   RowBox[{"PlotLegends", "\[Rule]", 
    RowBox[{"datos", "[", 
     RowBox[{"[", 
      RowBox[{"1", ",", 
       RowBox[{"5", ";;"}]}], "]"}], "]"}]}]}], "]"}]], "Input",ExpressionUUID\
->"c87f26fb-6527-4c32-9840-da7732d2a243"],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{}, {{{}, {
        Hue[0.67, 0.6, 0.6], 
        Directive[
         PointSize[0.003666666666666667], 
         RGBColor[0.368417, 0.506779, 0.709798], 
         AbsoluteThickness[1.6]], 
        PointBox[CompressedData["
1:eJxdmTfQ3UQQgDVULlVQuKAQDMN4GIYR2WRhE0x+ZBOMhcHYYMIjG5zOnUuV
LlVSvtKlSpcqKVVSqqQkvO875taFb7634fb2dk86/bef+vbN07dUVfXEP//9
O+7/rU//N0xvdvywHzv5AOPLjPV+TK/At+7HaQMfRH4Mvg1W3sCvwXcwynci
d7674GfgQ/Cr8N3wG/A9jC8x3hviaeHj8H3we/D9+7HT3wPB/4PI34If2o95
/Q8zvsD4CPbGcxg+Cj8KPw8/th/7T+DHGeUnmO8j+En4Q/gp4pOfhj+GO0Y4
wUk5eU74z3k/wXiE+T5ADlfWC+tqeuRHS/3qWX7XXn4f+XNlvAmuTjKSp454
ct7czxeCHE7GTx30xgfnfL3I7/hLcKd/9nFS7r7qn7qd3kFuHbtf9E1iPvuo
O4Wcum4+RW6du//0yWT88mfIX9+Po/bw8jly6xT7Dp7Ib+5T8m9dd8ZPHyzE
a59M5ts+Yf5Jdv+ok1572P1JMvWQzyXXb9+RP/twcb2w+zXJ1tfbMP46eEKe
YPM1qX8We/f1C36HF+QJ7rSHmzPYv8v4NXpw8yX28Ii/SX3n55xa8NfJzOc5
1iOf4EZ782L81vFpRuucerLOc32Rpx42r6P25lF79xF5Rd9bn90HpT/Phcn8
eU5Yv+z76Pz2rfZwz3yei67PPuzxZ11bz557i/aeg85/oozXc8Z8W8d5/hOl
f/uqc/2y9p579g88Or99hP8OzufFyTI++9r+sO8X5J7TOR9B7jlpPpLnDvoj
nPcr+Ftk56fvGuqvgSfq0760v3wOuv5k35KvUXvXC5v/xXMDf9Up9JA3suuH
O+eHc3/Kzn+q9D/B1rf7vjj/p6U/901762JCnvNm/vV7tpzHfp6sA9h9X/Bn
n4zE35i3c8wf68K+cn7PAfdfZp3uQ45T9vzDj/XR6Nd9tU+Ru48pjJ5/njue
z+5rXrf+QtyV+Xffv2IM6zJOz2PrXv/WZT5vA3su67cyD67fvncd2ll/rtN9
9dxnv8Ygn86U4xLy7nPEuH0uuG/mMfF86tX3d/v0dPl7fl4q3/K79vjLffIN
88Pm1b6zXnv1raNgP2rveSu7/6Ev3Hfnsw/t4866cP/h/Hywj+BRuX2k3PwH
/xX75rnXwL31d64ce0brOsHme1Tf/de/fQDn8495zGMDWxf2gX1hXJ5bSXv3
9atynRPsc2FRbv6tK89BOOc/1EkP5+fb12X81pXPjUn/+Fu0t/6pm/z8g/Pz
D875h3P+rTvrP3CuS/tCfz6HvsWP9QfnvoE9F3rYcznB9u+ovvUH5/Mv2Ff0
pedqDXs+NrD718L5fAryDex50Nv3yLf65x6Q9AcPynnPH5VzL9zp33sG7Hv9
rNz34KC/6t972nf4595Xy9zTGthzvFXu8wn2PXgD+5zpYetmC+f9Czzoj3yN
zg/v1Pc9y3jI16y99yCZ9+ZV9h75Pfbko5ZdP+y9rJW918DeKzaw95oetl+3
sP2etIcH57ef1CffO9hzZJKp6znYL8YLr8Zj//+APvPXsPvXwJ4jLZzPWdjn
8kZ9zyv1Xb/z+VyCPXcG5ezTCFt3O9i+m5wff7P2xLu4HvRX5eSr+hE589dw
fm4ox76Ffe/rYO8xG/V9X1TOvXEL53um81E/g/69R8rWv/64x03aU2+zjP2i
PvJVf95rfyr91bD3xgb2XtXC3uM77bkXbmTv3eoTz1a56w/6g/MjH5Xz3WGn
P/pxUk5/z8brdwsZ/6vs94+f8cN8Nex3jUYmf636zN/B3rs36rt+5fD253J9
SX3shzD/qD36O+V+h9Af+nOYbzFe9199vz/+ghz9Gs7fYWDz2ypn/k577vUb
2e8O2lv/wV9SH/mg3PpXzvp2zu93EdjvPHOYb9Ge+l3Deqvz+GO+Gs71L/M8
aeH8HU058W3gfP4r57vxVrn7L3N+DLL7r737b7x+pwvxz8bn/ivH3xr8Vb+W
66t/LeNplGPfwvZzp5x4Nsrd/+B/q5z8JOez/mX7X333P+hPsN89Z+fD/xLi
WWX3/7dyPTVs/TWw/dAqt/5ln/+w/dXLvH9tAyft+W49OB/fmccg32nvd3Xj
9/0n+F+C/hr8VxdK//WFUt4EeSvjv5N5n9oE/T7It4FT4CHweKGMfyf7/hvm
m4P+opy/W6zBvrrIOlhvDZvPJnAbuLtY+tsE7mXr/2IZbwryIdiP6rt+mb/j
TSGeWTnrXWT+DrYGri4xn+//l0r/jUx/tzLxd0G+0R/x9sqJZxs4qX9kPw7B
/xj879SnHyeZfM2BlzDfGri6XPqvL5f+Gxl/bdDvZO8/wb4P8m3gFPSHIB+D
fBfkU4hnDvEuQb4G++pK6b++Uuo3V0r9Nuh3su8/Qb8P/rbBPgX5ILv/QX8X
eArzzcHfEuJbg36VSv0DqfRfBz4ok98m2B8K3Ab9w4G7oH8s8Cbwcdjv6j3s
ffis+tabzPP8fFhPkrlfXgs8BH/Xw3yj+uT396C/U873gxuBp2B/M8Q3B/4j
8BLW92fIzxr0/wrxVVdL+YGr5fpq5eTj4NXSvgn2hwK3gQ8H7gIfC7yRyc/x
MH8f9M8G/W3QPx/0U+BrgQftye91mXocg/7vgXchnhshninIbwb5HPz9EeJZ
/o/nbx4VoWs=
         "]]}, {
        Hue[0.9060679774997897, 0.6, 0.6], 
        Directive[
         PointSize[0.003666666666666667], 
         RGBColor[0.880722, 0.611041, 0.142051], 
         AbsoluteThickness[1.6]], 
        PointBox[CompressedData["
1:eJxdmDmwHDUQQKeIHG5AQEAwUBTloihquA0YLG5zL6cN2DDcxhweLmPj48uZ
ww0dTki4IeGEhBsSTki4ISHHvCdK/YOvettSH5K6Jc1tH59747ObmqY5+s+/
f9vlb3/svyZ9nfiBVj60tNO38IpWvnlpuwG+hf7yrUub5XZp+2/g25d2lu9Y
2vEsfCf9v4IPh/F3Yc/+dyPXv3uQn4O7pW2/hO/F/ufwfdhXfj/6zsAPMN54
HiQ+/XmI9nvah9GvP0eWNtn/EewpfxR/nf/HsGf8R5Hb/3Ha72ifCPqOYd/5
SfAP+A239n+S8V8gl52/p2D8yfBW+0/zO/oyvMFe8wy/E3+WjfdZWP/gQf3P
Le0ezvDkfD9PfMSbn6/9aY4vrfs1wzvHv4D+n5DDg+v9Iqx/sv69hD8/In+p
7t+8jFz7cNL+K0vrfs9wyY9XaZ0/2fV9jdb5h8t+WC/tCvsJTqxvDjzJjn+d
37GfYPdzhjfMxwSPxvfG0nZwgleuJ+x8T3By/t9cWtc/wRl9GXZ+J1n7b9GP
+BI8O9/KyfcJHs3/t5e2Zb8muHG8zHpM9jd/36Gf/sOuR4Yb/Yd769EJxsEJ
tn5lmfydTtT+NCdrfQlOnzEetv5NQd68W9tLcLZeKCfeCZ6cv/do4QQ73xl2
v03waH1+H/34k+BW/+HG+IO8OcU45AmenD/Z9T9Vx9ucpjX+08F/OBm/8k8Y
90GtL8Ej+ykrd/6Vu34f8rv+w63+K8feBJf92y9tz3y0fT0+wdOn9FOOPxl2
PUbl7nfY/TLDWf8/oh/jW7h1P8A989HDJT9g82NUn/MNO58z7Hw2HyOnfwtP
5oNyuIfN9wy7v0e4cb1gz7NZufGzLtaDNnAK3MPmg/tI/0f3lfVaOfV4hkv9
YF09D1rYfEmw95Uetl5mx9N/hL1/uW+8T8xw8nw0D7XvPnH+lbMf3KfWs2ze
ax82Pyblxu947xfuO+Jx35fzEPZ+2cOed9l9z3jzwPuG+9r5Ns9L/uF3G1rt
lbjcf66L9mXmz3Vwv1gX9Nd5M59K3XX/6ZfnGez+8N7be59SbvyO176sfeui
9xfjcv6/rPuXc037svlnntHfeZrd/8rx133Vat843H9na/0JLvl3trZjHcvm
n3n9dW3XfnOQO0/Gqx31uy76Xe6Bxv9V3a/cw41b/cy7daoJfriPrGtzmGfX
zX1T7uvG4bzA7gPfLWVdnBfnXz3Ov6z9sG9KHhqn626eON78cx85/+pzn2kX
v6xTrlsK7DuyrL912DjDPvJd5j60jhb752oudcj9Z16Zt7B1KIe8Mw/LfUX9
xm9/779DPc66t+K947vWdfedtOU9U+7h1PM13ME9PMT2Z/yHN+jbwGvsjzL6
tjLjvdeveE/t1Ec7h/F75Z4/tsyH7w7fE22wa1zlfmKc52o7zlPvvZ75811Y
3heOP1v7VeqM42Hf1eV8lY1f+/AMmxf7EI9xu09WYR5auD2P3iD3neq+XsO+
n3vfYczXYH/PAdn4Zc9x7bP/t+rzPqv/n9Z2XZ9ZP+C97L3CeUK/+6jcy5Qz
P86r9hNsfq5h87iXjV/9ngs/1P75XaTks/ZYv636vIeoD97B3nv8rmMd3RuP
9Z+8s56uzGvstzL6Otj1SLDnzNr+1svAA1zOqR9rf6wDnhNjYOtOqe/K0bfT
P+t86L83Xr9fWWfYv6XuWcdh63AHl3MljLdu6W8vU98HvyN5jgb5Rn3mv/4g
3zre+5X+4c8Odj1n+xt/8L8hr60nq/O1PfPee1cHl/vJ+dqfteNdf/UjH9Tn
+svMx0Y2fvW5/trD/wl2f+3s7zkLe8/cB/uN5xDyFVzih91fHey5keBVOJe0
39sfHoI8h/Eb2HN1tL/5L/s9CPZetAv2ZuNj/+7D+OYCeqz/sOd4C7seHez+
THBZf7jkv/3xb1Cf629/eKM/rj9sfdjC5Xua+lmvXbA/O976r37vrRcZb/27
WPvTwuZzB5u/CTY/1qF/b3/3P1y+nwR7m9B/vFjHu4XL+e9447e/629/67/9
rX+/oNd7FGx+tbD33i7IE+x+XsPlvWZ/zqfB/r7fYd+pG7jc57XP+m3h8n0F
9r6w077nn/pdf+V+v7uEH57/st8FLtX+dZdqfxLs+2ptf98rof8Q5DnIN0E+
qt/6H/ydwvhd6D/D5sc+6G8uE6fxwyV+2fgDp8u1vXXQ18Ouz3C5tp+Dvo1y
1x92f2/D+Mnxnv/29zuM/pCP+zC+uVL3X8m++2HrTyf7XSnI13D5XhP0DVdq
f3OQb2TrP2y92ir3nQeb77sgn4P+vf19f16tx6+u1uPbwN3V2v8Eu17rIO+D
/kF9fr+1P+fpBvbdNgb72zB+Cvp3+uN3iyDfB33NQW1vdVDrbw/q/t1BrT8F
+TrI+6B/CJzD+A1c6n/Qtw3y6aCObxf0zUG+d7zv3lzrO5Tr/qvAt8AlP2Ts
HQ79u8BHgr0U5MeDvjVs/Cdh36V98OdM0D8E+QW43IuD/evKvY8F+zeCf2Ow
92vovw3y34J8konnd9h3z07/yNc/Qjxz4D+Df3vYd+hfYf6aa7V/hwKv4LL+
12r9Lex8Hg7yLvCR0D8pZ76PB/laOXwy6Oth5++Mcutt8P9C4BzGX4edn43z
Qb7cCOPH4M+v6nP9gz+/hfmdgr3fjZ/52IXxfwR78//+/A34KOPq
         "]]}, {
        Hue[0.1421359549995791, 0.6, 0.6], 
        Directive[
         PointSize[0.003666666666666667], 
         RGBColor[0.560181, 0.691569, 0.194885], 
         AbsoluteThickness[1.6]], 
        PointBox[CompressedData["
1:eJxd2X/QVFUZwPHVyKF0dB1FX5xoNsfyxWF0ITWKXyu/QlFcCAwBYQXJVxRY
BZSf73tfnZIZS9bJQTKqbSpDzFzHNASENSiZmmCLGtBo2NAhkmlaHQVyNLPO
97sz9/iHz3w499znPuece+69735m7uIp80/PZDLDP/rf/2L4rzXq/2HdjgL/
EOIA3TfEZ3fibIhZfX6IMz2+I8R39KdCvNrjcyHmbb84xGv0JSH29fjPhXiZ
7gxxu8dfFp1vUIhTPP7yEJfYng/xhZfw4BCrtg8JsbYdfz7ECzzflSF+0+Ov
CvEsfXWI3foLIV6oh4a4W38xxHn6SyE+YP5hIZ6hh4c4Wo8I8cA2PDLEabaP
CnGZLoT4FMcn+GbbrwnxSZzgb9k+OsRzGb8Ev277mBC/a/8xUT1jQxxoO95q
+7gQx9uOT1nf+BBf9frxL+3/5bQTfMT2CSF+aH98i+3Xhjjb/vhM18t1Ia6z
Hc+w/8QQ99uOD9t+fYjX2o43ev4bQtxmOz5g+6QQ33T88QWe/8YQX7Vd214M
0fku4JvMV0znr+M19p8c4vuMXwGPtT9eRnsdn23/KSEOMD++x/74mPnxn+z/
lRCfsT8eYX88kfrreKT9p4b4uP2x6zfBj3j9eKH9p4V4rvXj11xP+GX7461b
6X9TiMNwAZ98kf54tf3xIdf/V0Pca388Eyf497iO/2L+6SEO9PpxX68ff2h/
fML+N3Oc/XG3/fHPvX68z/4zQpxuf3zM68en2T86PjMzxLvtj6vmx/3tj2fZ
f1aIF9p/Vvr8CX7d+vHD9r8lxHcdf9wePzzX/Pik/WeH+HHzY/efBM+0Px5s
/zkhbrf/nHR9Cd5pfzzS/qUQn8E5fK/nw67nEm7vt3gdruKrzIdX4mYpfT2Z
W0P8NuOXw8vNj4eYHx83P76e/lU82/z4TPPj9v03N8TJ1o/b44mdzxKuuD7x
IOvHfcyPHZ8mfsL880K8xPx4rPnxJI4v2W5+/Jz14/WuV/wO+0kT/xZnbuO8
jj92Pgq4bP34qPsTftn8eLj14zdpb+KB1j8/xCnmx3dZP/7A+vEu5x97f1ft
b/34Tscfr3D9fS3Et6gnh3fhAm5YP/Z+TPCt5sfbzI+ft378feu/nfM6//hx
68ct82P3/wT3Z7+o4gWOP3Z9NvF11t8V4vcc/650ewHvYzxK+CHXH77B+vF+
68fTXX/4KdffHSF2Of74FdcfXuH846z140H0r+ITuI5/5fjjuuO/gPNaP95s
/Xia448fc3/Gvk9U8RWOP37b/Pgnjv+dIc6nfw4PMD/uMT/2+Z3g+7z/8I3m
xz4fm9j9JXNXiD5fc3iq+XEfrq+E/+H444ucf3yG+fG/6d/Ed5h/YYiXmx/7
fljA/3H+cXv+sftBFZ/u+yLebf24/f6zKESf7zns86KA3W9L+H7zY/fvKm7f
/3iy84/nWf/iEP9lftzf9Y+XmB8vdf5xj/OPfX7Xse+HTTzO+sshTuT4LD7P
68Gn8f6cx4vcH/EjHF/EL3i92PflMp7B922Cn+f8FVzHVfwgx9fwxbiON3B8
A49xveFTuIV3+H19N8fjLP6h9yP2eZTHVdcn/jrtRXzI+rHvL2Xs+16Cp+AK
7ud+gn9Dew3vdX3jJ60f9+Im3mf9eJT13xPipdaP/ftFDt/u/ON+uID/yfmL
+AraS9j7s4zfsH7s93wF+/5YxR/jfDX8Wfd3z4cbeKrrHT+KW7h9/y0J8SXX
P/b9OYc3bgkxj89x/eNRzj/ucP6XpOstY99XEzwYV3DD5xk+TP4a3mT9eATn
b+B5Pm8jt/Bmn79LQ/wrzuJ+3v+4k/Y89n2sgLucf9zweYH9Xi/jxT4/8SFc
wStd/9jnbQ2/5vrHB3ED+z3fxJtd/16f878sxO84/3iT878sfXweT/L5gOc4
//gV68fvWv+y9PUn+DnrxxusHx+1fvx368f+faaB37J+/Gfrx+2//9wb4o9w
Fv/A/Q+fxHn8hvsf/qnzj7dbP/6D9ePfWT8+bv1Rvip+2vpxu3680/rxRuvH
b1s/dj/J3Me/Wz92vHLY+czjYc4/9vu4iI94/+MHvP9x+/0Ju/4q+D33P3zM
/R/7PKrj/d7/2L/HNbF/b2jhp13/y0P0ezyLN7r+8QfWj89x/4/ai/hF5x93
Ov/4Qecff8P5x66HKi47//hh5x/vcf6x908Tu55a+FnX/4oQdzj/OHH+V6Sv
J493u/5XpPMV8S7rx7+2frze+vEB68eu9yr2fbaGf+z844nWj52/JnY/a+FV
zv/KEA87/3i9849z1o9dPwXs31uK2O+NEj6P30vKkRN8Nq7gDlyNjq/hQ77/
4Utpb+CBuIn/xvEtPMDfb1alz59dlc6fi9rzUXthVfr6i/gTuBS1lyMnuI/1
R/2rUXttVfr669H5GtjxaUZu4fbvZ6tDHGT92PHMRe35yAV8lPMXseNTwv7e
V16dri+J2itR/mp0fA2Ps358nPwNfKXzj52/Fh5m/WvS9WTXpK8ntyZdXx4P
tn78nvVj56eEz7J+3J7/Nenrq+Buv3/wJ/3+wRnXP+60fnzE93/s91Yrqi/T
HeJWjs/iEs7htb7/46Xu/9HxRezvVyW8G5fxp/3+w0NwpTt9vdXudL217nS9
dbze+vEvXP/Y32db2PnK9IR4m98/eLzfPz3p/Hl8wvp70vUVe9LXV8LOXxm/
7/6PHb8K/qP140XW35Oupx4d38B+3zax49vCjn8mSZ+/b5I+fxbvwR1J+vw5
7Ph14uWOV3S+oXgzLuAinoBb3k94YT3E6fhnPl+x90sXXuB6wzW8HA/191Ds
/K7FzmcFD6d9Q3T+anT9m6J8Nez9tQU/4e+R2PWyB3t/NfD9tB+MxrsZ5TsW
5WtF430qqi/TG+L5zj++yP0Au3478F73h8idvenry/emr39obzp/IfKE3vT1
F7HjMx27fkvY9dUV5StHxy/Hrs8Eu1+ujY6vRPVtiPJVo+vbFOWvRe1bsPdj
HY/m/Huw660R9T+I3Z+a+KPnyX8BUK+6DA==
         "]]}, {
        Hue[0.37820393249936934`, 0.6, 0.6], 
        Directive[
         PointSize[0.003666666666666667], 
         RGBColor[0.922526, 0.385626, 0.209179], 
         AbsoluteThickness[1.6]], 
        PointBox[CompressedData["
1:eJxd2j9wHUcdwPEbKhUurnChwsXBeBgN42EeIEBAIAcYEGDgCIEIMOQINgiw
8ZEYELFsrYMhBgw8wDAqXFxBocLFFSlUpLgihQoXr3ChIsUVLlSkuMKFCgpg
9vvVzG2K/Objvf2/t2/3Pb37pWvPXX5XlmXP/O9//4/xv/HZGH9X8g8xbt7F
SzGu3MZ5jBu/xafLaf7lGGf6TIyVzxcxjr/H76F8fTbGA59/b4xHr+GVGPfu
4PfRntfxuRi3TH9/jLX9mcUY/oA/EGNr+gep78/4Q/TH8leJ+sOUb/s/EuOa
/f9ojINei/FYfyzGXn+c+EfiJ2LsbM8zMVZ/wp+kftM/Rf338LPU7/NljLuk
Bzwz/dMxtoxPwPuO12diHBmvgI9M/yzlmx+X9ud8jDn1hfNJ/Z+LcdN0nNm/
z8e4ZPvxnvPxhRjXqC/gufO7HuMG5QV85Hh9MUbXS8Brlv8l+mc6Lm3/l2Nc
Nh07HtmFGAfHB5+8H1+hvabjk/fhq9SHAz60/V+LcTQdL5m/inGf/pR4xfHG
I+ux93nn7+u0B5fY9RHwHuPb487xfy7GLVzinPYEfIh7fPL+fiPGBfWVuLJ+
7H7S49zxeT7GI9uPg+sFd38lPz52fr8Z4zgnPz50PeE18+NHfyf/t2I8/w/y
4xoH/JDye3wdZy/EePE++fEVHF6Ylt/jA+vfIB8u8fA38uN1yutxwNm36Z/t
x4/Mj9dtPz5r/u/E+Kb58RP7j1cpr8d7OPsu/TU//o/14y37jzucXUzy47et
H68wPj0+Gb/vER1/fN/8+I79x+vW//0Yn1o/PnT94lXbjx3v7EWi+V+c9i/g
ZfPj3Px1jLu4wHuuB3wP1/jfOOBj3OIHjhdewoPPu35/EOOC9AKf933CzzOf
NV7x/cLHtL/F77he8L7148L+vzR9vsAD72uJV+0/7u0/PmX/8X37jyvKH/BF
6/9hjJv2H79l//Eq66vGB84vvmT9eNv68XXyD3jL9+9SjHPrx+4/JT5t/33+
n9SPG+vHjnePnzj++LH9vxzjI9cfdn2W+KH14wXzEy4n9WPHs8cb1o/fcP39
KMZtxqPAZ3yf8SXXHz7ZH/Gu9ePK+vEb1o/fcv/4cYwXXX94y/nHK9aPR/uP
K9ziJdc/XvyF+rHrOduM0f2kwO53JR5cf7jy8wVvUF/r8/Yfb7JeBrzr+vtJ
jPukF9jxLPET++/zvn/48F/Uj1cor8d3XP94cP39lPbbf3yW+kp8YP141/0H
uz+12PnssfvBgEs/v34W4ybzV+CB+SrxPueNGt9z/eEV9z98Mv/4AutpwA31
ZVdirEgvsOedEvf0t8ae5wLeJ3+Ln/h5h/08G5L07Cr/7vrHG5zPyqvT/tTY
z5uAG55vce956+q0fQMOrv+fx+h+U+A7zj92fdR4j/ICfuz84yPXP37o+vd5
19+1GD0PFvjkPHJt+nyNa/df7PmmxWecf+zn9YC3XX9NjMv0J8cPnA/cM38z
PHd8sOeFynTKq/EB67fB2Tbtxx3fJ8wtj/t6iwPn/Q63gXZh7wcLfER9g+1h
vY7W5/36F7ST/uV4jecLfMx9YIa935T4Ev2t8Cn7jxfkb7Dnm4C9z86x998W
e5/rcE95PV7ifrMwHQ/2h/Eb8Yr3p5dj3LL/eInyi5en5c1wY/+x41fhjOdr
fIX10uDR/Uvbf+3nqfWT3mH38z55foE9rwz4EI945vp/JUb36xw/df3jZd63
Gb7n+QDvOv/4seeVV6b9bbDns5DUN8dX7D92v+vwyfkav0P9C+x5esCd/cdv
uv9dj/GQ/SPHdz0PYc+LM+x5vsQ17a9w436Nn9K+Jskf8K79x95HW+z9r8MH
fr4k+RfY8/yAF3hM+pf9MsZ9nONj+48v2X/8gPVQ4rdJr7DnoRoXzj9uXf/Y
++Ece19osft5l5TX45P+J+UN2PPGiIPr/1cxOr459nxR4NN4hi+4/2PHt8L3
7T/2/Nwk6QFvOv/4lP1P2tcl9ffY9bbAnpeH5PkxqT/7dYx+n5Djc/Yfuz/M
sOfVEnvfr/Ax59Ear/J8g92/Al4nfY6XSG+x3+d0eHT/wy1e4APPu/g0HvEp
6su2YvT9zvF51z8+sv/Y8SrxmvOPD51/y3f+se93wMt4jk/us9j7aJek96a7
/5vu/GPPIyM+5/73G9rh/GPvGwX2fD/T7n/Y/b3C7ud14gbfsf/Yz4M59vzV
4sb5x66HHrs/LczvedP8eMSd8/8q/XH+sff7Am+4/706La/EAVfY82mN/b2m
wT0Oied4gdskvUvc45zvsxdJfUPy/JikZzem9eU3pulFkj5LXN6Yll8lrhM3
Sf6QpM8Tt4k7nNHfPklf4F08JB6T/J7DdY4dz2J72t5Z4jJ5vkpcJ262p+0N
Sf1z7Pi329P2d/iY+0KPhx3aheeUNyT1jbbf3y9vxrhm/29O0wu8yX1jhmue
L/E+6dXNaX114iZxSDzHo/cfHDhPdz7v7yG21/M/bkgf8Jz7zogL6stuTcvL
ccZ5vsD+3jLDub/XYH8frLC/79RJ/ubWtH3h1rR/czzDbdK+Dpf+HoUdr4Xt
x0OSPto+1z/rxvHJd6blF64r7z870/aVuKB9VfJ8vTPtX4Md37Az7d98Z9re
Fle4w81r5LP9rL+F7SHd98L+jtbv7+Fh2t+lMC0/t1zeh+UwLb9w3VPeSpjW
NwvT/qzhk/cnSV9P2lMl5W9gv5+vfR77nvp9RmP5fJ+2hTe9f5vOfNzFgfu3
41pw/961PZTn9xAt3kvq6/Cc+7T7xOD93fGm/AP7433O8eL+e4hzPFg+/T9y
vlhvo+mM5zHOaF/GvDqeS34Pg3NNe5ddB35feHvaPv8uxP1ghv09ds192+/3
kvrWb0/7V2HHZ8N9GdfY+dvE/n1Bk+TfSvoTkvx3/VzAc9vD/rVr+3lf26R/
e9bnfoX9e4197Pc7vemUf5CU53vnejtM8g+Ox+vlfwGKaVrR
         "]]}, {
        Hue[0.6142719099991583, 0.6, 0.6], 
        Directive[
         PointSize[0.003666666666666667], 
         RGBColor[0.528488, 0.470624, 0.701351], 
         AbsoluteThickness[1.6]], 
        PointBox[CompressedData["
1:eJx1mTnQFUUUhaeMCCcwIDAYLcuiLMsad0SE9rkArgOoILiMKJsIDOKC4tJm
hBMSdkg4IWGHhBMSTmg4oaFY//me1adKAm59/7n39r29zbz3Hj1z9djZh6qq
2v/gv3/tzr/14I7dBP1B9qDsLuNa9ojsw8a7d2yEHxEfFjfi18WPyR6SfVx2
n+wTsi/I7pE9IPukjf+U8r8hftr0VjbIPiP7puyzin9L/JzV97x0/KnrXdkX
jV+SfUd2r433svKRf5/pr9h4+62+V62+A+bPujEf9K35iDDxr8lqvSJM/Kbs
J8LUo3WN6n+7zuQnD/nF2/2hupmPbR/oGof9xTxs5+9Q6f+/f7dxt35HTLdx
qrdtXJg6WWd0mPptXpgn5q16z8aBtQ+q92U30mHm9QOrD6a/rqw3dKUeu7L+
DFPf0TJ/OFqOH9Hln82/OibWvIZjpR7FzGOGmb/jZX0B3ige1vzl45b3wzJ/
EG/7R9d8Z1jntPpIVuc+GEdY5zLDnKOPZXXuAsy+hzWfGWb+T8iP9RNv+z9R
+meY+/Kk/FRPgIkXc09ldPbXJ2V/AdY9E2HiYeWvTsnqngunbHx09h86/Z8u
xwunSz2iq98M696sPi3rCTD71zjD3MuflfmCeHtfGGf8Ob+fy2o/B1jrET+3
eJjz+4WY9YeJFzM/Gd7I9qV/YxzEPMd6WPERVv5EvOrJlm+Bec58Kav1aWDW
U0z/PTrzi67zncw/w5qvxfJXZ8p+Gpj+Te9h1R9h3dtJTH8ZXfOxWL7qq1Jv
YNUfYO3/HuZ5K+a8JHTVny3/gj/379dlPY14u5/QdZ56mPmH5Z+Ip3/TF5j7
76z8la8Rb88TOv2jq94Is/9g7jvjBeb+Oier+7w5V9YT0NVPj8746Nq/CZ35
R5f/AjP+eVmd/+Z8GR9gxff4c7+ZntDZ/zDjw7wnXijrb2DGF7OePTr7H1a+
BGv9Mqz1WSy+uljGNxdLPcCqrzeOsO7TZJxhre9i+atvZLn/xPQb0FV/D/Pe
bXqCed7A6m8xvbpU1tNcsvHRNxofVr5o8Qlm/8HMP8z439r4sMYLsPL14u3z
xeITzPrjL31B5/69bOPDvE/ArP/lMl80TvjTv+mL6dWVsp7mSukf0FVPb/4R
ZnyLz+g8/9A3+vvV0r+5Wo4XYPo3/4iu95FkeoYZH+b+H2R1n9Sw9AZWvS2s
52mAdX91pveWb4D5PGPxo5jPYQlW/ATr80I2fYZ53pBfvBpX18rx6mtlvQ26
7tMWfbNjAyy9gzkvsNZvIJ/io/GIv9YjWf7J9Ayrn5l89A/Lf7V+qu9k1W8t
Zj4b01vjgL/G64x7WP0NxHN+YNU3wro/EqzzMFl92fQZ1v5a8Nd6rOiqp7ou
q/NSw3p+NNfL+Bbm/Qh/jdeh87xEV78DzPdGNt4I0z+s740mmOcLrPmbGV/n
Y7HxV3Q+P30vu9mxtXEDK74Vc14CzPrD7H/iNR+D6dHyjzD3Gaz5mmCeL8Yz
rPlcTF8tX/WDrD7f1LA+vzfGLaz3iWDxHczzAqZ/i49i5mNE5/zD6mey/Bmm
f/LxvLP8q/lXP5b11zDvY2LObwvzfMRf+TqY/Q9rvgeLj+jaz6NxsvyT5c+w
9s8M67wssOpfbfzqJ1nNbw3zPihmf7fo6ifArL9xD+v7jwHW99DR9BHW/kjG
E6zzkS1+hjVfi/EK8z30jTJ/DXP/wVqPFubzGaz90pnew6w/rPmJsOoZYZ23
ZPkmqydb/bPlX+DNjl1hvnf/ufSvxdvvQ0xvYc4/rHo6WP32xgOs8SOs/kaY
+8/0ifrY/+g8/2D2v9W7Wj/VL2U9NazxG1i/g7Qw+x9m/8Marzf/wfQI07+Y
+U+mT+ibHZst/2z+i+Vbrd7qpqzWr4b5PsD0Fqb/m2X+Dp3vSyx+MP9oPBon
44l8PP9g7YcZf77vQNf73mrx1a9l/lq87R9m/xsH4jVeZ3oPa/8MMPc/zPob
J1j37wTzfT7j6/uwGV39LqavFl/9Jsv7P6z3p8a4FW9/7zDu8Gf/Gw8wn39g
1TuST7+TJNMnmPvP9Nn0BdZ+XWF+V/299K9h+of5/APrd6Zg/p3595Z/gHn/
tfjR4pONN1m+bDzD6m+x8VbTqz/K+Nq4genf9AArf2fcwxpvgPUvmj4aJxtv
Mj1bvtn0xeJXq+/Bg6Tw32Vcx9J/N8z8wJqfPaa3Fr/XOBgftvE7WP9OGvfG
F4wH4xuWPxrfMh4t/rZxMr5j8ZPxXeNsfM/yzcb3jRfjvyzfavrfxtWfJe8y
rmHl2216Y/oe49Z4r3GwfIdN70w/adwbXzAeLN8N06PxLfMfjW8bJ4u/YzwZ
37X4bHzPeLb4+6Yv//E/Vaa8dg==
         "]]}, {
        Hue[0.8503398874989481, 0.6, 0.6], 
        Directive[
         PointSize[0.003666666666666667], 
         RGBColor[0.772079, 0.431554, 0.102387], 
         AbsoluteThickness[1.6]], 
        PointBox[CompressedData["
1:eJxdmTvQHlUdh3esUr6FRQqK1XGcDMM4q6BG5LJExEA0WRMuEbmshFxALhuD
GiGBpaN8S8otKd+ScsuUb0m5JeWWlOJ8z7PO+aXImef738/5n7Nn9/3RWx9e
vv6Dqqqe+P6//40n/9anT8aLLX84GUf5FHwJ3sFX4B8yvsh4Gvmf4YcY/8hY
M3aMPz4ZZ+1/wvgC409Pxlb9M4zm8zD25vNI8M/gy3DDaH0/D/kvIv9HQ/4Y
cv3/MvL/FfKX4F+T/8vwWeT6+w2s/eOR32+RW+8TwU8yOj9PMSp/mtF6Wuzh
Ea7M55mSR7jV/lzYw7Pxf4c+PMKj8mfR1/+zkf/vwx7e+vG5kMPVBcY/lPoj
PJv/+bKeUTb+84z06/h8qW9fWu9onzp/F8q/j7L973ix/Ltxqj/B5idfCLvz
ZZ1bfpdC71Lpz3k27la38YK3db1Y/t16M+6WN/lu8x526rWXS7n7wry2PnF+
3Hf2gWy9V8q8PAe2Ol8s62zdd66DbN8EV+5r+0J2PWDnbVZunZ4Drpvs/IV8
fjnyfwU95++VUn8MnoOrq5G/bJ+GfIa3df4LevYP7HqMytm3s6z9q7Dx4a3v
ZddPfff5X2HOjRbe5j94lu2f10puZffra2W+s3LPydexs39g+3KU7X946983
GJ2/4FE2f3h7XrzJaHzZ9Q+eg6uekXxq2XNXZj56eDtvZNZrkslvlslvkT2/
/sZIvbVMvBZ2fnvl1icjn2T26SyzHkvYV2+V9rVMfq3Mfu/h7RyGPbcm9d0v
6uNvkV3/a4zs91p2P8Put/5axJfxN8nM56w/44e/6m1G5ruW7cfgXva5ETzJ
9hvsc2eRrf86cZz/62V9Lex89sGjzPpMMvaz/qhvgbfn2A3k9Hstk28rG/9G
xJfxP8nOv8x+WWTj3yzzq2WfZzdL/73s+sus7yQ7/zL5LmFf3cIPXMPbeabc
+kN/lJmvSTa+TD3LrYj/DnLrl43/TllPHzzK9r/2rr9y51+596J3GZm/+t0y
/1Y5+n3oj7Lrr73ntXLrV+697++w8eFt/8Pb+Sd7P9Le/Sd7/urP81e2/vfQ
p95aNv57ER/e7mFhP8k+72DvO4v29v/7Zb217D1Ndv7fL+sdZfsP3u57yslv
kZ3/D8p8a3g7/5S7/2SfzyGfZPKZ9Wd82fo/LPOrZePDW/2y9Yf+JNv/6hsf
3u6JA3o8L3ew98Yadj4b9b2Hhn0He6/tleNvCH+jcurZK7efgw/6d31l5Ef1
fd5bD/Oxhn51Gz/428Hunxr2nt+oD7fqw51M/F57/A23y/xGmXv1Xma+Jpl7
80Fmfmf9W79y6lnMB17Vd///o9TfwfZvDbsfG/V9L1Mf+w52Pnvt6b9B9j0+
4u+19z6lPv19kN1fwUftWY/F/JifVX3vz3fK/Hay9+E7ZX2NTL+3Ie+0R97L
vJ8Msu8XsvXL3qf1T34H2f0tsz5HmX5ZQn+V/U7xEXUwHzvY+all5reRvZ/B
vid2svtfdv8Hj/qD98rd/8GHyGcOPqrveQd7vqwhr/6J3Prh7XmknPVsQr+F
PZ867T2vw98g+/yE7ae9cus3nvWr7/5Xn/U4mg/+loi/Kve7wr9K/zvY86mG
7a9Gtn6Z+J32yHvl9NsQ/kbZ8998yHfSn/XD2/ud+vAx8ltCf436qn9jD+9k
zo8a9vxplLv/YfupU04/9+F/0J/3Z+1Zj73s+ac+fFDu9yT9e/4rJ99Fe/px
Vd/3v7uMnv/wtv6w/dnI3o/vlvV1+nP9Zd7PBu39LitzP97Lrn/kd1Bu/5sv
63WM+Iv6yFfZ8/8/2Fu/zHemWka/gbf3E9j7Tqe+9+XgQXv3f9jvZc7TSX2f
f/rzuyK8rb9s/erb//p3/T9mtP9h56NWzno3H5f+W+Xef5T7/FfO83SAt+/g
Mv2wV5/fVSaZ+8Ih7Ofgo/n7vhPx15BXn5Ty3Selv1rm/GrU93tjcCfzO0kv
k/8g+7tLyPdhPxmf/XFQfu5knGV+VznK7n+Z/Ff9+f3yXhl/J3v/uVfGb4Jb
9eFO5nzr1YcHmfpG9fldbC/zO9ckk+9Bpj9m2PU86t/vXerzu98a9tV9Rt7X
d/dLeS3b/7Lfi0PehX0PW++gnN81R5n+2cvc3ybtPf+U+/wLPqrPebJEvmvk
V31a5r+TiV9/WvprQt4Gd6HfBw+y739hvw/9STn1HYLn8HdUTn1LyFfl/i76
GaP7X8Z//Vlp34S8Ve75H/q9+t7/ZX83lslnL/s9JfgQ+rNMPx1DvkR+a+T3
/UFQ5HdKdj5k4p+WnZ+QnxlL/03w2YjXRrzzMvl3MvN1VabeXubfreAh9O8G
j5HPFxFvH/6+DJ6Cvwo+RLyvI94c+g+Cj8HfBC/B30a8NeTfhbz6vJSf+ryU
74JPh34dfCb0m+Czod8Gnw/ugq+Gvz7kt4IHmfW8G/Ix/H0R8n3Ivwz5FPKv
gg+h/3XI5+AHwcew/ybky//r+y9fdR4E
         "]]}, {
        Hue[0.08640786499873876, 0.6, 0.6], 
        Directive[
         PointSize[0.003666666666666667], 
         RGBColor[0.363898, 0.618501, 0.782349], 
         AbsoluteThickness[1.6]], 
        PointBox[CompressedData["
1:eJxdmD3QJUUVhqeMNpzAYAOD0bKsLcuyrj/IqijNp+D6y3UVXf9gRMFVQQZU
XBV1yAgnJJyQcELCDgknJJzQ8IaGYu37fFY/G+yp53tPn9OnT3fPzP3o86/c
feFDXdc99sF//7MP/10ef2i/UvKH0vINcf/Qzk+EPxz7jdibsU/FfkTjB43/
WLiEPx771dhPxN6OvaX4n9T4T8XCn47+9fBJ8/lM7OOxn419LPZzms/nle+R
MPP5Qiz5Ho3+TdXxpdgvxn5Nfyf+l5WfeTFP6nhUfsRLXdf1l1anjut+YB/R
35nHVTuPWXydN3+fled6XdBhxj8Zm3WZn1Sep9px1+vOurEPqQtm3e/E0keY
/tOn7JPrvrHO34qlrzDr8+023wxT33di06cZpn/fbeuZYfbh96TD7KOn23rm
p6WfY1NfgZkvnPlWmP32/dirjA9f9wM9+SpM/Xdjs68KnPWd77b+FSb/D2Kz
XgXOuZvhzK/C7OMfav4w/YCz3hXOPdI9E5t7pjzT+s9w+lNh9v+PYrPeBSY/
nHoqzPr9uOUC0z8491qFWb97sfQfTj0zzHiY/D+JzT1cYMbD6U+Fc590P43N
ehWY+cNZjyq9+5nmD3PPiyvMc+Tnyg9z38GsP8xz5xexOe8F5r6C6T/Mc+lZ
zR/mPnq29a8w99tzGi+eYcbDPOfG1n+AM/8Cp94RZn3h3OsrTL/hPMcPOPV1
v4xNPwc48ytwzusIXyU/nPtihdOPCue5cUjvnm/nO8Dkh/NeMcIZP8NZvxVm
v8BZzwPm/PxK+eHsvwIn3whzP8DUD3Nfig/F637d6gPMfoJTzwhzPuHsx1V6
hTPfQ/G7F2KzPweY+wTO+o0wzwc4/VnhxK9wzvcRvn7/eDE2+3GAqR9OP0aY
+mHyw4lf4azfofHdb2LzfB7grGeBWX/5z3DWZw3zflTRs78OmPN/v61vgBO/
SB/hnMcZTvxV/hXO+h4w99dvY9OfAU69RTzCvG/Bib/CvG8o/iG9+10bb4B5
HksfxTOc87NKrzD5Yfbf75Uf5n0Ivkp+mP7DnH+Y/QfnvB8a372UOMk3vNTm
K+iJN6Jz/mDOP0z9Gn+gs/4vt+MHOPdFebn1H2HOH5z6VvlXmP0n/+4PLQ/i
AtN/mPdtOPNZw9Rb0bPeBzrvn6/Ept4BZv/B1A/z/IE5f3DyVfGhfN2UOHl+
92H6P6Bnvif01FfQ43+G87wd4XwPTDDfbfJfFH+FU/+mfFXz3eF85x3SLzDf
Ua/G5rurhzOf4dU23wnmfOKf+s4w5wVOvyb5z3DWf5G+ki/z2eCsX1W+XXzA
eV+7wHwnv5Z4Wa9ePLzWzu8EZz4F/6zHGT37bYRzP05wvj9mOPNd4NyXK5z7
f4O5X+Cs7w5nPof8LzDvH39s59vDvA/Amf8J5nszTD/O6Lyvwal3UvwZzvNy
0fhVvJGP+0X6jn710B7o9B/m94s/xSZeD6ffA0z9MO/HcH4nPMP5nXAUT/Kf
4fzuuIhX+W+KV8W7/A/Fu0jv/tzqPZx4g/ST9CI+i0c4+SbxrPiLeJX/Jr1K
38WH/C/i7vV2vj2c8cPrrf9JehGfxaN4UrxZ+Rf5r/Lf5F/lv8v/EF/E3V/a
8b14EJ9g+g8n3ln+o3iS/6x4i/xX6Zv0Kt4V/5B+UbzuQevfP2j9B/FJXGD2
v+KN8p/Es8YvGr9K38RVvIsP8UXxu7+28+nFA5zxJ+kFpv/iUf6TeFb8Rfoq
3sRV+XbxIf+LuPtbyz2c8YP4JP8i/Sx9lD6JZ/kv0lfpm7iKd40/YPov/+7v
Lfcw9YtPMOdffFa8UTwp3ix9kb4q/iauGr9r/CG+yL97o43Xi4c3Wv8TnHhF
fJb/qHiT9Fn6Il7lv4mreNf4Q/pFevePVu/FA0z/xUX+Z/EonsQzTP3SV+Xb
pFfxLv9D8S/Su3+243vxID6JC0z/xaN40vhZ+iJexZvGV/Eu/0P6Bab//2q5
Fw8w9YsLTP3iUf6TeJb/In2Vvomr/HfxIf+L6vvgQ6LRb8Dsh7n1vykexLc0
/iT9tvQiviP/s/ie/EfN/778J/ED+c+K95b0RfrbirdKf0fjN+nviqvivSd9
F78vPpTv3+KL/P8j7t5s8994s9V7OPFuyn8Q35L/SfFuy7+I74jP4nuKN0q/
r/yT/B+IZ/m/JX0Rvy1elf8d6Zvivyu9it9TvF36++Lj//xfSYWdJQ==
         "]]}, {}}}, {}, {}, {}, {}}, {
    DisplayFunction -> Identity, PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.02], 
        Scaled[0.05]}}, AxesOrigin -> {0, 0}, 
     PlotRange -> {{0, 572.}, {0, 8410.}}, PlotRangeClipping -> True, 
     ImagePadding -> All, DisplayFunction -> Identity, AspectRatio -> 
     NCache[GoldenRatio^(-1), 0.6180339887498948], Axes -> {True, True}, 
     AxesLabel -> {None, None}, AxesOrigin -> {0, 0}, DisplayFunction :> 
     Identity, Frame -> {{False, False}, {False, False}}, 
     FrameLabel -> {{None, None}, {None, None}}, 
     FrameTicks -> {{Automatic, Automatic}, {Automatic, Automatic}}, 
     GridLines -> {None, None}, GridLinesStyle -> Directive[
       GrayLevel[0.5, 0.4]], 
     Method -> {"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
           (Identity[#]& )[
            Part[#, 1]], 
           (Identity[#]& )[
            Part[#, 2]]}& ), "CopiedValueFunction" -> ({
           (Identity[#]& )[
            Part[#, 1]], 
           (Identity[#]& )[
            Part[#, 2]]}& )}}, PlotRange -> {{0, 572.}, {0, 8410.}}, 
     PlotRangeClipping -> True, PlotRangePadding -> {{
        Scaled[0.02], 
        Scaled[0.02]}, {
        Scaled[0.02], 
        Scaled[0.05]}}, Ticks -> {Automatic, Automatic}}],FormBox[
    FormBox[
     TemplateBox[{
      "\"palmitoleic\"", "\"\\\"stearic\\\"\"", "\"oleic\"", "\"linoleic\"", 
       "\"linolenic\"", "\"arachidic\"", "\"eicosenoic\""}, "PointLegend", 
      DisplayFunction -> (FormBox[
        StyleBox[
         StyleBox[
          PaneBox[
           TagBox[
            GridBox[{{
               TagBox[
                GridBox[{{
                   GraphicsBox[{{}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.132], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.132], 
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    AbsoluteThickness[1.6]], 
                    PointBox[
                    NCache[{
                    Scaled[{
                    Rational[1, 2], 
                    Rational[1, 2]}]}, {
                    Scaled[{0.5, 0.5}]}]]}}}, AspectRatio -> Full, 
                    ImageSize -> {10, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #}, {
                   GraphicsBox[{{}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.132], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.132], 
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    AbsoluteThickness[1.6]], 
                    PointBox[
                    NCache[{
                    Scaled[{
                    Rational[1, 2], 
                    Rational[1, 2]}]}, {
                    Scaled[{0.5, 0.5}]}]]}}}, AspectRatio -> Full, 
                    ImageSize -> {10, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #2}, {
                   GraphicsBox[{{}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.132], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6]], {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.132], 
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    AbsoluteThickness[1.6]], 
                    PointBox[
                    NCache[{
                    Scaled[{
                    Rational[1, 2], 
                    Rational[1, 2]}]}, {
                    Scaled[{0.5, 0.5}]}]]}}}, AspectRatio -> Full, 
                    ImageSize -> {10, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #3}, {
                   GraphicsBox[{{}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.132], 
                    RGBColor[0.922526, 0.385626, 0.209179], 
                    AbsoluteThickness[1.6]], {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.132], 
                    RGBColor[0.922526, 0.385626, 0.209179], 
                    AbsoluteThickness[1.6]], 
                    PointBox[
                    NCache[{
                    Scaled[{
                    Rational[1, 2], 
                    Rational[1, 2]}]}, {
                    Scaled[{0.5, 0.5}]}]]}}}, AspectRatio -> Full, 
                    ImageSize -> {10, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #4}, {
                   GraphicsBox[{{}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.132], 
                    RGBColor[0.528488, 0.470624, 0.701351], 
                    AbsoluteThickness[1.6]], {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.132], 
                    RGBColor[0.528488, 0.470624, 0.701351], 
                    AbsoluteThickness[1.6]], 
                    PointBox[
                    NCache[{
                    Scaled[{
                    Rational[1, 2], 
                    Rational[1, 2]}]}, {
                    Scaled[{0.5, 0.5}]}]]}}}, AspectRatio -> Full, 
                    ImageSize -> {10, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #5}, {
                   GraphicsBox[{{}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.132], 
                    RGBColor[0.772079, 0.431554, 0.102387], 
                    AbsoluteThickness[1.6]], {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.132], 
                    RGBColor[0.772079, 0.431554, 0.102387], 
                    AbsoluteThickness[1.6]], 
                    PointBox[
                    NCache[{
                    Scaled[{
                    Rational[1, 2], 
                    Rational[1, 2]}]}, {
                    Scaled[{0.5, 0.5}]}]]}}}, AspectRatio -> Full, 
                    ImageSize -> {10, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #6}, {
                   GraphicsBox[{{}, {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.132], 
                    RGBColor[0.363898, 0.618501, 0.782349], 
                    AbsoluteThickness[1.6]], {
                    Directive[
                    EdgeForm[
                    Directive[
                    Opacity[0.3], 
                    GrayLevel[0]]], 
                    PointSize[0.132], 
                    RGBColor[0.363898, 0.618501, 0.782349], 
                    AbsoluteThickness[1.6]], 
                    PointBox[
                    NCache[{
                    Scaled[{
                    Rational[1, 2], 
                    Rational[1, 2]}]}, {
                    Scaled[{0.5, 0.5}]}]]}}}, AspectRatio -> Full, 
                    ImageSize -> {10, 10}, PlotRangePadding -> None, 
                    ImagePadding -> Automatic, 
                    BaselinePosition -> (Scaled[0.1] -> Baseline)], #7}}, 
                 GridBoxAlignment -> {
                  "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
                 AutoDelete -> False, 
                 GridBoxDividers -> {
                  "Columns" -> {{False}}, "Rows" -> {{False}}}, 
                 GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}},
                  GridBoxSpacings -> {
                  "Columns" -> {{0.5}}, "Rows" -> {{0.8}}}], "Grid"]}}, 
             GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Top}}}, 
             AutoDelete -> False, 
             GridBoxItemSize -> {
              "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}, 
             GridBoxSpacings -> {"Columns" -> {{1}}, "Rows" -> {{0}}}], 
            "Grid"], Alignment -> Left, AppearanceElements -> None, 
           ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> 
           "ResizeToFit"], LineIndent -> 0, StripOnInput -> False], {
         FontFamily -> "Arial"}, Background -> Automatic, StripOnInput -> 
         False], TraditionalForm]& ), 
      InterpretationFunction :> (RowBox[{"PointLegend", "[", 
         RowBox[{
           RowBox[{"{", 
             RowBox[{
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.003666666666666667`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.368417, 0.506779, 0.709798], 
                    RectangleBox[{0, -1}, {2, 1}]}}, DefaultBaseStyle -> 
                    "ColorSwatchGraphics", AspectRatio -> 1, Frame -> True, 
                    FrameStyle -> 
                    RGBColor[
                    0.24561133333333335`, 0.3378526666666667, 
                    0.4731986666666667], FrameTicks -> None, PlotRangePadding -> 
                    None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], 
                    StyleBox[
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"0.368417`", ",", "0.506779`", ",", "0.709798`"}],
                     "]"}], NumberMarks -> False]], Appearance -> None, 
                    BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.368417, 0.506779, 0.709798]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.368417, 0.506779, 0.709798], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.003666666666666667`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.880722, 0.611041, 0.142051], 
                    RectangleBox[{0, -1}, {2, 1}]}}, DefaultBaseStyle -> 
                    "ColorSwatchGraphics", AspectRatio -> 1, Frame -> True, 
                    FrameStyle -> 
                    RGBColor[
                    0.587148, 0.40736066666666665`, 0.09470066666666668], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], 
                    StyleBox[
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"0.880722`", ",", "0.611041`", ",", "0.142051`"}],
                     "]"}], NumberMarks -> False]], Appearance -> None, 
                    BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.880722, 0.611041, 0.142051]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.880722, 0.611041, 0.142051], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.003666666666666667`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.560181, 0.691569, 0.194885], 
                    RectangleBox[{0, -1}, {2, 1}]}}, DefaultBaseStyle -> 
                    "ColorSwatchGraphics", AspectRatio -> 1, Frame -> True, 
                    FrameStyle -> 
                    RGBColor[
                    0.37345400000000006`, 0.461046, 0.12992333333333334`], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], 
                    StyleBox[
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"0.560181`", ",", "0.691569`", ",", "0.194885`"}],
                     "]"}], NumberMarks -> False]], Appearance -> None, 
                    BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.560181, 0.691569, 0.194885]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.560181, 0.691569, 0.194885], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.003666666666666667`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.922526, 0.385626, 0.209179], 
                    RectangleBox[{0, -1}, {2, 1}]}}, DefaultBaseStyle -> 
                    "ColorSwatchGraphics", AspectRatio -> 1, Frame -> True, 
                    FrameStyle -> 
                    RGBColor[
                    0.6150173333333333, 0.25708400000000003`, 
                    0.13945266666666667`], FrameTicks -> None, 
                    PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], 
                    StyleBox[
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"0.922526`", ",", "0.385626`", ",", "0.209179`"}],
                     "]"}], NumberMarks -> False]], Appearance -> None, 
                    BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.922526, 0.385626, 0.209179]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.922526, 0.385626, 0.209179], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.003666666666666667`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.528488, 0.470624, 0.701351], 
                    RectangleBox[{0, -1}, {2, 1}]}}, DefaultBaseStyle -> 
                    "ColorSwatchGraphics", AspectRatio -> 1, Frame -> True, 
                    FrameStyle -> 
                    RGBColor[
                    0.3523253333333333, 0.3137493333333333, 
                    0.46756733333333333`], FrameTicks -> None, 
                    PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], 
                    StyleBox[
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"0.528488`", ",", "0.470624`", ",", "0.701351`"}],
                     "]"}], NumberMarks -> False]], Appearance -> None, 
                    BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.528488, 0.470624, 0.701351]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.528488, 0.470624, 0.701351], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.003666666666666667`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.772079, 0.431554, 0.102387], 
                    RectangleBox[{0, -1}, {2, 1}]}}, DefaultBaseStyle -> 
                    "ColorSwatchGraphics", AspectRatio -> 1, Frame -> True, 
                    FrameStyle -> 
                    RGBColor[
                    0.5147193333333333, 0.28770266666666666`, 
                    0.06825800000000001], FrameTicks -> None, 
                    PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], 
                    StyleBox[
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"0.772079`", ",", "0.431554`", ",", "0.102387`"}],
                     "]"}], NumberMarks -> False]], Appearance -> None, 
                    BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.772079, 0.431554, 0.102387]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.772079, 0.431554, 0.102387], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}], 
               ",", 
               RowBox[{"Directive", "[", 
                 RowBox[{
                   RowBox[{"PointSize", "[", "0.003666666666666667`", "]"}], 
                   ",", 
                   InterpretationBox[
                    ButtonBox[
                    TooltipBox[
                    GraphicsBox[{{
                    GrayLevel[0], 
                    RectangleBox[{0, 0}]}, {
                    GrayLevel[0], 
                    RectangleBox[{1, -1}]}, {
                    RGBColor[0.363898, 0.618501, 0.782349], 
                    RectangleBox[{0, -1}, {2, 1}]}}, DefaultBaseStyle -> 
                    "ColorSwatchGraphics", AspectRatio -> 1, Frame -> True, 
                    FrameStyle -> 
                    RGBColor[0.24259866666666668`, 0.412334, 0.521566], 
                    FrameTicks -> None, PlotRangePadding -> None, ImageSize -> 
                    Dynamic[{
                    Automatic, 
                    1.35 (CurrentValue["FontCapHeight"]/AbsoluteCurrentValue[
                    Magnification])}]], 
                    StyleBox[
                    RowBox[{"RGBColor", "[", 
                    RowBox[{"0.363898`", ",", "0.618501`", ",", "0.782349`"}],
                     "]"}], NumberMarks -> False]], Appearance -> None, 
                    BaseStyle -> {}, BaselinePosition -> Baseline, 
                    DefaultBaseStyle -> {}, ButtonFunction :> 
                    With[{Typeset`box$ = EvaluationBox[]}, 
                    If[
                    Not[
                    AbsoluteCurrentValue["Deployed"]], 
                    SelectionMove[Typeset`box$, All, Expression]; 
                    FrontEnd`Private`$ColorSelectorInitialAlpha = 1; 
                    FrontEnd`Private`$ColorSelectorInitialColor = 
                    RGBColor[0.363898, 0.618501, 0.782349]; 
                    FrontEnd`Private`$ColorSelectorUseMakeBoxes = True; 
                    MathLink`CallFrontEnd[
                    FrontEnd`AttachCell[Typeset`box$, 
                    FrontEndResource["RGBColorValueSelector"], {
                    0, {Left, Bottom}}, {Left, Top}, 
                    "ClosingActions" -> {
                    "SelectionDeparture", "ParentChanged", 
                    "EvaluatorQuit"}]]]], BaseStyle -> Inherited, Evaluator -> 
                    Automatic, Method -> "Preemptive"], 
                    RGBColor[0.363898, 0.618501, 0.782349], Editable -> False,
                     Selectable -> False], ",", 
                   RowBox[{"AbsoluteThickness", "[", "1.6`", "]"}]}], "]"}]}],
              "}"}], ",", 
           RowBox[{"{", 
             
             RowBox[{#, ",", #2, ",", #3, ",", #4, ",", #5, ",", #6, 
               ",", #7}], "}"}], ",", 
           RowBox[{"LegendMarkers", "\[Rule]", 
             RowBox[{"{", 
               RowBox[{
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}], ",", 
                 RowBox[{"{", 
                   RowBox[{"False", ",", "Automatic"}], "}"}]}], "}"}]}], ",", 
           RowBox[{"Joined", "\[Rule]", 
             RowBox[{"{", 
               
               RowBox[{
                "False", ",", "False", ",", "False", ",", "False", ",", 
                 "False", ",", "False", ",", "False"}], "}"}]}], ",", 
           RowBox[{"LabelStyle", "\[Rule]", 
             RowBox[{"{", "}"}]}], ",", 
           RowBox[{"LegendLayout", "\[Rule]", "\"Column\""}]}], "]"}]& ), 
      Editable -> True], TraditionalForm], TraditionalForm]},
  "Legended",
  DisplayFunction->(GridBox[{{
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"], 
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, GridBoxItemSize -> Automatic, 
    BaselinePosition -> {1, 1}]& ),
  Editable->True,
  InterpretationFunction->(RowBox[{"Legended", "[", 
     RowBox[{#, ",", 
       RowBox[{"Placed", "[", 
         RowBox[{#2, ",", "After"}], "]"}]}], "]"}]& )]], "Output",ExpressionU\
UID->"923d8f0a-e7f9-4692-889d-a8f4381fb4e5"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Gr\[AAcute]fica de 11 a 5", "Section",ExpressionUUID->"758e3169-05c5-4960-944f-8c4ab1ae68e4"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", 
  RowBox[{
   RowBox[{"w", "[", 
    RowBox[{"[", 
     RowBox[{"All", ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "]"}], "]"}], ",", 
   RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
   RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", 
   RowBox[{"AxesLabel", "\[Rule]", 
    RowBox[{"datos", "[", 
     RowBox[{"[", 
      RowBox[{"1", ",", 
       RowBox[{"{", 
        RowBox[{"11", ",", "5"}], "}"}]}], "]"}], "]"}]}]}], "]"}]], "Input",E\
xpressionUUID->"39fcb6d7-3e1c-4b7d-85af-d5240d1c52f0"],

Cell[BoxData[
 GraphicsBox[{{}, {{}, 
    {RGBColor[0.368417, 0.506779, 0.709798], PointSize[0.007333333333333334], 
     AbsoluteThickness[1.6], PointBox[CompressedData["
1:eJyVmHmOVVUQxk/8i2VcE2OIIQQHEAHl+HBgUNLdNN3SgNxuaBBUwB2cpbyl
3KXcJbgEh/f9KqnvevKw/+ibelWnhq+GM7x/8mbv9L1SyrW///3z3fx9Wf/9
THs10dXocmfzbV/r+4N+/17rd0R/J/7NvL7t2Pq7+lbJiS5f6XfZK5fzutD/
Y17fdsVH3239/k3Hn59EXxd9KPra5lvRhz+72V69J1r+RPyyBy7tlr7yp1wR
fUP0jawH/8fjbL9AfyJ7j0R/Lvph1ldFE3/9OfOL6MgH/Iui0X9V38f6Cp/p
KNOFelltvsMoPdXkxW+2vj0Q/UX2t0m+PLF48Ed4FvJZjU/9QH+2+Y7yj/yD
V7kgefTRD9DgDe34yN50P8dXwJN6wp701ZMcz/BU9Kf6Hmf+hP/Ca3qW41k/
zfz5uWjFV1iPv0/MX+pB9VbxfyV98pd8TMQvewX76EO/6m3U+uhHq6+oB9mP
+IVXAb9L8gd78i/yJXv1gfGtvyb4wjvwOi/5X0Sfk38vTR6+8lNZr3ocXogW
3uX3bH94leNZow/8jJ5NX/j78eY7whd+A+uV/wn/iec0ry/UE/0OfVb6obV+
zXrlp8HXPJngC6+oz8umj3w8z/xm9btG/rz5K3rE3ocWn+yP6JN/1HPUE/Jn
zf5V81f1HnhfMfvnTL/8r8SveVRfZPkGX/rW3r+nmY55cc78Uz6jPyQ/u//o
P2t84Rl4sF8hzzyE/sD0MW8t3wP1J/8m6pP9CP5q8434mcfgpXxEfX4re6eZ
X9CHv1bv4f9H0o+81kd/gjf2L5l+4bm2+Teb/dB30dYTD3z2f/xV/LPNg+hn
5qfpm19l/hr/mQe/5ngG2x+if9hvrT/LSfa3Wb01q2+vt8Y8Zv+wfId95Wc2
/2M+M49lP86X1IfqsVg+62+ilY+YL4ov5jH2iY/zmtXDaPM59oPrFh/nQeJj
/rzM8r6fV+WL81HwqW/sM8/RT3zmz2TzurE/qR8jfs4rpm+2fq9vc3xr9Ck/
02vRijfmCfGTH+Kx/MV64eHzvRlek+HTrH7XJ5k/PMt0zG/2Y5OPecl5Dfxr
Rz/1znmI+lttvuQ38uP9b+eL2E+YV8hTb6qn1pmvnC/ol8H6r9h+1KweyBfr
13Y+nW197AeaF4EP/Y9/7BcWX7N5G+c59puTLD/YfhD5Yj+3/Szw57zNeupF
dMRreNMv4O3nTa+/2P8Uz2D7W7V69P4d7Pw/G76s594Z++NKX/j0O/njfk28
q8xv2m+ZB9wHZvjca3ez/OK+zv2RfubeLntxHxc96f7NPbseZn7I652A94Ci
d4t4D8Af3jfQL3yjX8gf93vuC/J/tvoaX2f5yN8No9FneE6GX/V87GW6gAfn
Ye7X4M97Ce8St43mvQX/0E9+dZ8Fjwm8mS8H+mo+Rr/q/jHafjnZ/db3v9Hu
ezPzkf59I5r82P2j+vnY+rPZ+Tvyx3mK/Yp+Y78VnqOfP5lHindt+mNeab8c
qA/m2R+ZviA63pveZv7IPF/pi7+c15Hn/ARe1Cv2le84/3FeZb3OD3GfK/ry
PnBG8mOm4z1G8nEf//P6xt5hpuO+L/nm+h5mejrI8nF/l75i/Gb2XV+8x4hf
n2R+vOfgzyOjicf9AS+37/EbXmU/8+N9Fv5RpqvJV9Mf7x/E4/buZ3nHz+3H
exnrLX63H/F5Pjv2q8ubv83lzV7UB/YNr8n9tXgDX9lf1O/jLD95PJ5v07fA
3/NzP/Or+d8sXsdn8vrt1QP6zP92L9Ox39IvW+ol3usdD/LJ/GC99ZfXS9Q3
tON1aHzzz/vL4/N51gx/ny/N+3MbfuDTq3/Pn9kvPp/uZbp5v5p+r/fFvDR6
0Q+9+UW8R5kf5zun0Xc38+tOh4/+O5mOeeT6z/y3fFe/2yc++OTL9Me5suNv
8NHn8j2++w+9Bb+QR9+tLO/4RLz0j813x7eLd0f/or/udvi9+Cx/ca51/8iH
xRvvZmeMxt+bJo9+8LP+XuR3P9Nebwt/oIl3ZXzL50K/z9defzkenXp4Z/2d
84jPi3bQ4fv+tk2+M88W+syfrr/gYftF83lseLg999fPi13/OusX9ryf3d7/
xcPOt45v178OPov6cv/3O/Lb6sn1dfRPJ9n/uA938uvni0V9Hxv/OPNdX9jz
81In//G+47TfN3r916OxZ/EFPp313fpnfyQ+x2Nb//Tw3VZP22g/H22z35Pv
9e8WvAPfXn1vyc9Wf3r9+e7+/AUIGWiw
      "]]}, {}}, {}, {}, {}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->{True, True},
  AxesLabel->{
    FormBox["\"eicosenoic\"", TraditionalForm], 
    FormBox["\"palmitoleic\"", TraditionalForm]},
  AxesOrigin->{0, 0},
  DisplayFunction->Identity,
  Frame->{{False, False}, {False, False}},
  FrameLabel->{{None, None}, {None, None}},
  FrameTicks->{{Automatic, Automatic}, {Automatic, Automatic}},
  GridLines->{None, None},
  GridLinesStyle->Directive[
    GrayLevel[0.5, 0.4]],
  ImagePadding->All,
  ImageSize->Large,
  Method->{"CoordinatesToolOptions" -> {"DisplayFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& ), "CopiedValueFunction" -> ({
        (Identity[#]& )[
         Part[#, 1]], 
        (Identity[#]& )[
         Part[#, 2]]}& )}},
  PlotRange->{{0, 58.}, {0, 280.}},
  PlotRangeClipping->True,
  PlotRangePadding->{{
     Scaled[0.02], 
     Scaled[0.02]}, {
     Scaled[0.02], 
     Scaled[0.05]}},
  Ticks->{Automatic, Automatic}]], "Output",ExpressionUUID->"e5678eb4-1b1e-\
4da9-a379-4a2a8e941a1a"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1350, 685},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
Deployed->True,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"11.3 para Microsoft Windows (64-bit) (March 6, 2018)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[1488, 33, 329, 6, 119, "Input",ExpressionUUID->"74641a7c-1c51-4b93-9d69-9b88efaf457e"],
Cell[CellGroupData[{
Cell[1842, 43, 102, 0, 67, "Section",ExpressionUUID->"838928fe-617b-4994-ae25-b72e537ddb02"],
Cell[CellGroupData[{
Cell[1969, 47, 405, 10, 82, "Input",ExpressionUUID->"1e89ea61-77ba-4517-95e2-e85c8de91ccc"],
Cell[2377, 59, 164, 2, 32, "Output",ExpressionUUID->"4dd5bf0c-e0bb-4f9d-a6e9-bf7bc5cd2505"],
Cell[2544, 63, 1289, 22, 109, "Output",ExpressionUUID->"235ec4ab-3cfd-4061-94c4-8ebc827035d4"]
}, Open  ]],
Cell[3848, 88, 231, 6, 45, "Input",ExpressionUUID->"683143b0-48cc-4fb0-aa2d-0c19f9d4fa00"],
Cell[CellGroupData[{
Cell[4104, 98, 449, 13, 45, "Input",ExpressionUUID->"f01a2927-5d1a-41a1-817e-2e2497e29cd8"],
Cell[4556, 113, 243366, 4969, 583, "Output",ExpressionUUID->"a3390f20-4e97-4c58-a5bd-c662b2cf1154"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[247971, 5088, 129, 0, 67, "Section",ExpressionUUID->"c3f05b45-64ed-4079-b7c2-fa495b688c2e"],
Cell[CellGroupData[{
Cell[248125, 5092, 297, 8, 45, "Input",ExpressionUUID->"0c17f1a6-3670-47a7-93fd-977ac3468882"],
Cell[248425, 5102, 243246, 4972, 583, "Output",ExpressionUUID->"ad09aadb-90e3-4a54-9112-8ea30b0df996"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[491720, 10080, 167, 3, 67, "Section",ExpressionUUID->"b92861de-81c8-4370-ac4f-ddfad07b3cb8"],
Cell[CellGroupData[{
Cell[491912, 10087, 513, 12, 64, "Input",ExpressionUUID->"d5906be2-9370-471c-a78f-1187ae502674"],
Cell[492428, 10101, 44923, 971, 378, "Output",ExpressionUUID->"0ab71345-f5b4-4635-b146-70404f4d4323"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[537400, 11078, 131, 0, 67, "Section",ExpressionUUID->"cb93fc7f-918b-447a-a778-b8aeba4f8a6e"],
Cell[CellGroupData[{
Cell[537556, 11082, 232, 5, 45, "Input",ExpressionUUID->"e8f53b84-7451-432f-bf25-0a20f55d3c5e"],
Cell[537791, 11089, 13412, 249, 109, "Output",ExpressionUUID->"d4459548-9b12-4897-9d1e-1062fc40ae3d"]
}, Open  ]]
}, Open  ]],
Cell[551230, 11342, 87, 0, 67, "Section",ExpressionUUID->"5d9b5491-4749-4abf-b651-5be074256aaf"],
Cell[CellGroupData[{
Cell[551342, 11346, 105, 0, 48, "Subchapter",ExpressionUUID->"12e92a4a-4295-4238-b4e6-ae970592c94f"],
Cell[551450, 11348, 372, 10, 45, "Input",ExpressionUUID->"a09eb1bc-80e8-4a39-8223-d87ffcd2472f"],
Cell[CellGroupData[{
Cell[551847, 11362, 444, 12, 45, "Input",ExpressionUUID->"cd817e6d-df19-48ac-b735-43accc17d68f"],
Cell[552294, 11376, 892, 21, 71, "Output",ExpressionUUID->"876b1c8a-36e5-4cc9-a8ba-57b0aacaa30e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[553223, 11402, 118, 0, 67, "Section",ExpressionUUID->"dcc52010-c420-476c-85b7-2b71fd09eb0d"],
Cell[553344, 11404, 710, 21, 45, "Input",ExpressionUUID->"b9f69ff9-6fce-47b3-9689-b5ef65f0b68b"],
Cell[CellGroupData[{
Cell[554079, 11429, 291, 8, 64, "Input",ExpressionUUID->"2ee21aa0-793b-4f7e-9cb3-87a0102d46d4"],
Cell[554373, 11439, 315, 6, 32, "Output",ExpressionUUID->"7ef3ca2d-9702-4dfd-8599-b916c71ac9fa"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[554737, 11451, 99, 0, 67, "Section",ExpressionUUID->"74c4ff09-370e-41b1-89b4-75fb8e1db1e1"],
Cell[CellGroupData[{
Cell[554861, 11455, 343, 9, 45, "Input",ExpressionUUID->"c87f26fb-6527-4c32-9840-da7732d2a243"],
Cell[555207, 11466, 51621, 1006, 241, "Output",ExpressionUUID->"923d8f0a-e7f9-4692-889d-a8f4381fb4e5"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[606877, 12478, 99, 0, 67, "Section",ExpressionUUID->"758e3169-05c5-4960-944f-8c4ab1ae68e4"],
Cell[CellGroupData[{
Cell[607001, 12482, 587, 17, 45, "Input",ExpressionUUID->"39fcb6d7-3e1c-4b7d-85af-d5240d1c52f0"],
Cell[607591, 12501, 3582, 75, 355, "Output",ExpressionUUID->"e5678eb4-1b1e-4da9-a379-4a2a8e941a1a"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature OxTDwJORRu7lYA1HnACekWzA *)
