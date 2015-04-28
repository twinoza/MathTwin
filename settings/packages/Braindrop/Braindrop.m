(* ::Package:: *)

BeginPackage["Braindrop`", {"Notation`"}]
Symbolize[ParsedBoxWrapper[SubscriptBox["t", "_"]]]
Symbolize[ParsedBoxWrapper[SubscriptBox["I", "_"]]] 
Symbolize[ParsedBoxWrapper[SubscriptBox["\[CapitalIota]", "_"]]]
Symbolize[ParsedBoxWrapper[SubscriptBox["V", "_"]]]
Symbolize[ParsedBoxWrapper[SubscriptBox["J", "_"]]]
Symbolize[ParsedBoxWrapper[SubscriptBox["C", "_"]]]
Symbolize[ParsedBoxWrapper[SubscriptBox["U", "T"]]]
Symbolize[ParsedBoxWrapper[SubscriptBox["i", "_"]]] 
Symbolize[ParsedBoxWrapper[SubscriptBox["v", "_"]]]
Symbolize[ParsedBoxWrapper[SubscriptBox["j", "_"]]]
Symbolize[ParsedBoxWrapper[SubscriptBox["p", "_"]]]
Symbolize[ParsedBoxWrapper[SubscriptBox["\[Tau]", "_"]]]
Symbolize[ParsedBoxWrapper["\[Kappa]"]]
Notation[ParsedBoxWrapper[SubscriptBox["I0", "idx"]] \[DoubleLongLeftRightArrow] ParsedBoxWrapper[RowBox[{"Subscript", "[", RowBox[{"I0", ",", "idx"}], "]"}]]]
Notation[ParsedBoxWrapper[SubscriptBox["\[CapitalLambda]", "idx"]] \[DoubleLongLeftRightArrow] ParsedBoxWrapper[RowBox[{"Subscript", "[", RowBox[{"\[CapitalLambda]", ",", "idx"}], "]"}]]]

If[Not@ValueQ[UT::usage],UT::usage =ToString["UT\!\(\*SuperscriptBox[\([\), \(o\)]\)C] returns the thermal voltage for a given temperature in Celsius.", StandardForm]<>"\n"<>ToString["UT[] returns the symbol \!\(\*SubscriptBox[
StyleBox[\"U\",\nFontSlant->\"Italic\"], \(T\)]\).", StandardForm]];
If[Not@ValueQ[IDPFull::usage],IDPFull::usage =ToString["IDPFull[\!\(\*SubscriptBox[
StyleBox[\"V\",\nFontSlant->\"Italic\"], \(GB\)]\), \!\(\*SubscriptBox[
StyleBox[\"V\",\nFontSlant->\"Italic\"], \(SB\)]\), \!\(\*SubscriptBox[
StyleBox[\"V\",\nFontSlant->\"Italic\"], \(DB\)]\), \!\(\*
StyleBox[\"id\",\nFontSlant->\"Italic\"]\),\!\(\*SuperscriptBox[\(\\\ \), \(o\)]\)C] returns the \!\(\*
StyleBox[\"id\",\nFontSlant->\"Italic\"]\) PMOS's subthreshold Drain current \!\(\*SubscriptBox[
StyleBox[\"I\",\nFontSlant->\"Italic\"], \(D\)]\) (without approximating \!\(\*SubscriptBox[
StyleBox[\"V\",\nFontSlant->\"Italic\"], \(DS\)]\)), for a given Gate, Source and Drain voltages.", StandardForm]];
If[Not@ValueQ[IDNFull::usage],IDNFull::usage =ToString["IDNFull[\!\(\*SubscriptBox[
StyleBox[\"V\",\nFontSlant->\"Italic\"], \(GB\)]\), \!\(\*SubscriptBox[
StyleBox[\"V\",\nFontSlant->\"Italic\"], \(SB\)]\), \!\(\*SubscriptBox[
StyleBox[\"V\",\nFontSlant->\"Italic\"], \(DB\)]\), \!\(\*
StyleBox[\"id\",\nFontSlant->\"Italic\"]\),\!\(\*SuperscriptBox[\(\\\ \), \(o\)]\)C] returns the \!\(\*
StyleBox[\"id\",\nFontSlant->\"Italic\"]\) NMOS's subthreshold Drain current \!\(\*SubscriptBox[
StyleBox[\"I\",\nFontSlant->\"Italic\"], \(D\)]\) (without approximating \!\(\*SubscriptBox[
StyleBox[\"V\",\nFontSlant->\"Italic\"], \(DS\)]\)), for a given Gate, Source and Drain voltages.", StandardForm]];
If[Not@ValueQ[IDP::usage],IDP::usage =ToString["IDP[\!\(\*SubscriptBox[
StyleBox[\"V\",\nFontSlant->\"Italic\"], \(GB\)]\), \!\(\*SubscriptBox[
StyleBox[\"V\",\nFontSlant->\"Italic\"], \(SB\)]\), \!\(\*
StyleBox[\"id\",\nFontSlant->\"Italic\"]\),\!\(\*SuperscriptBox[\(\\\ \), \(o\)]\)C] returns the \!\(\*
StyleBox[\"id\",\nFontSlant->\"Italic\"]\) PMOS's subthreshold saturation Drain current \!\(\*SubscriptBox[
StyleBox[\"I\",\nFontSlant->\"Italic\"], \(D\)]\), for a given Gate-Source and Source voltages.", StandardForm]];
If[Not@ValueQ[IDN::usage],IDN::usage =ToString["IDN[\!\(\*SubscriptBox[
StyleBox[\"V\",\nFontSlant->\"Italic\"], \(GB\)]\), \!\(\*SubscriptBox[
StyleBox[\"V\",\nFontSlant->\"Italic\"], \(SB\)]\), \!\(\*
StyleBox[\"id\",\nFontSlant->\"Italic\"]\),\!\(\*SuperscriptBox[\(\\\ \), \(o\)]\)C] returns the \!\(\*
StyleBox[\"id\",\nFontSlant->\"Italic\"]\) NMOS's subthreshold saturation Drain current \!\(\*SubscriptBox[
StyleBox[\"I\",\nFontSlant->\"Italic\"], \(D\)]\), for a given Gate-Source and Source voltages.", StandardForm]];
If[Not@ValueQ[IGSP::usage],IGSP::usage =ToString["IGSP[\!\(\*SubscriptBox[
StyleBox[\"I\",\nFontSlant->\"Italic\"], \(D\)]\), \!\(\*SubscriptBox[
StyleBox[\"I\",\nFontSlant->\"Italic\"], \(S\)]\), \!\(\*
StyleBox[\"id\",\nFontSlant->\"Italic\"]\),\!\(\*SuperscriptBox[\(\\\ \), \(o\)]\)C] returns the \!\(\*
StyleBox[\"id\",\nFontSlant->\"Italic\"]\) PMOS's Gate-Source voltage current component \!\(\*SubscriptBox[\(\[ScriptI]\), \(GS\)]\) for a given drain current \!\(\*SubscriptBox[
StyleBox[\"I\",\nFontSlant->\"Italic\"], \(D\)]\) and Source voltage current component \!\(\*SubscriptBox[\(\[ScriptI]\), \(S\)]\).", StandardForm]];
If[Not@ValueQ[IGSN::usage],IGSN::usage =ToString["IGSN[\!\(\*SubscriptBox[
StyleBox[\"I\",\nFontSlant->\"Italic\"], \(D\)]\), \!\(\*SubscriptBox[
StyleBox[\"I\",\nFontSlant->\"Italic\"], \(S\)]\), \!\(\*
StyleBox[\"id\",\nFontSlant->\"Italic\"]\),\!\(\*SuperscriptBox[\(\\\ \), \(o\)]\)C] returns the \!\(\*
StyleBox[\"id\",\nFontSlant->\"Italic\"]\) NMOS's Gate-Source voltage current component \!\(\*SubscriptBox[\(\[ScriptI]\), \(GS\)]\) for a given drain current \!\(\*SubscriptBox[
StyleBox[\"I\",\nFontSlant->\"Italic\"], \(D\)]\) and Source voltage current component \!\(\*SubscriptBox[\(\[ScriptI]\), \(S\)]\).", StandardForm]];
If[Not@ValueQ[VGSP::usage],VGSP::usage =ToString["VGSP[\!\(\*SubscriptBox[
StyleBox[\"I\",\nFontSlant->\"Italic\"], \(D\)]\), \!\(\*SubscriptBox[
StyleBox[\"V\",\nFontSlant->\"Italic\"], \(S\)]\), \!\(\*
StyleBox[\"id\",\nFontSlant->\"Italic\"]\),\!\(\*SuperscriptBox[\(\\\ \), \(o\)]\)C] returns the \!\(\*
StyleBox[\"id\",\nFontSlant->\"Italic\"]\) PMOS's Gate-Source voltage for a given drain current \!\(\*SubscriptBox[
StyleBox[\"I\",\nFontSlant->\"Italic\"], \(D\)]\) and Source voltage \!\(\*SubscriptBox[
StyleBox[\"V\",\nFontSlant->\"Italic\"], \(S\)]\).", StandardForm]];
If[Not@ValueQ[VGSN::usage],VGSN::usage =ToString["VGSN[\!\(\*SubscriptBox[
StyleBox[\"I\",\nFontSlant->\"Italic\"], \(D\)]\), \!\(\*SubscriptBox[
StyleBox[\"V\",\nFontSlant->\"Italic\"], \(S\)]\), \!\(\*
StyleBox[\"id\",\nFontSlant->\"Italic\"]\),\!\(\*SuperscriptBox[\(\\\ \), \(o\)]\)C] returns the \!\(\*
StyleBox[\"id\",\nFontSlant->\"Italic\"]\) NMOS's Gate-Source voltage for a given drain current \!\(\*SubscriptBox[
StyleBox[\"I\",\nFontSlant->\"Italic\"], \(D\)]\) and Source voltage \!\(\*SubscriptBox[
StyleBox[\"V\",\nFontSlant->\"Italic\"], \(S\)]\).", StandardForm]];



(* Synapse Circuit *)
If[Not@ValueQ[SynapseBiasWeight::usage],SynapseBiasWeight::usage =ToString["SynapseBiasWeight[\!\(\*SubscriptBox[\(i\), \(W\)]\), \!\(\*SubscriptBox[\(I\), \(lkm\)]\), \!\(\*SubscriptBox[\(I\), \(lksyn\)]\)] gives the bias current for the synaptic weight \!\(\*SubscriptBox[\(I\), \(W\)]\), given the dimensionless weight \!\(\*SubscriptBox[\(i\), \(W\)]\) as well as the Soma's leak current \!\(\*SubscriptBox[\(I\), \(lkm\)]\) and the Synapse's leak current \!\(\*SubscriptBox[\(I\), \(lksyn\)]\)", StandardForm]];

(* Soma Circuit *)
If[Not@ValueQ[SomaBiasInput::usage],SomaBiasInput::usage=ToString["SomaBiasInput[\!\(\*SubscriptBox[\(i\), \(in\)]\), \!\(\*SubscriptBox[\(I\), \(lkm\)]\)] gives the bias current for the input \!\(\*SubscriptBox[\(I\), \(mbg\)]\), given the dimensionless input \!\(\*SubscriptBox[\(i\), \(in\)]\) as well as the leak current \!\(\*SubscriptBox[\(I\), \(lkm\)]\)", StandardForm]];

If[Not@ValueQ[BiasLeak::usage],BiasLeak::usage=ToString["BiasLeak[\[Tau], C,\!\(\*SuperscriptBox[\(\\\ \), \(o\)]\)C] gives the bias current for the leak \!\(\*SubscriptBox[\(I\), \(leak\)]\), given the time constant \[Tau] as well as capacitance C and temperature in Celsius", StandardForm]];



Begin["`Private`"];
UT[temp_]:= QuantityMagnitude[UnitConvert[Quantity["BoltzmannConstant"] *UnitConvert[Quantity[temp,"DegreesCelsius"],"Kelvins"]/Quantity["ElectronicCharge"], "Volt"]]
UT[""]:= Symbol["U\[UnderBracket]Subscript\[UnderBracket]T"]
UT[]:= Symbol["U\[UnderBracket]Subscript\[UnderBracket]T"]
IDPFull[vgb_, vsb_, vdb_, idx_, temp_:""]:= E^(-((vgb \[Kappa])/UT[temp])) (-E^((vdb/UT[temp]))+E^(vsb/UT[temp])) Subscript[I0, idx] Subscript[\[CapitalLambda], idx];
IDNFull[vgb_, vsb_, vdb_, idx_, temp_:""]:=E^((vgb \[Kappa])/UT[temp]) (-E^(-(vdb/UT[temp]))+E^(-(vsb/UT[temp]))) Subscript[I0, idx] Subscript[\[CapitalLambda], idx]
IDP[vgs_,vs_,idx_, temp_:""]:= E^((vs (1-\[Kappa]))/UT[temp]-(vgs \[Kappa])/UT[temp]) Subscript[I0, idx] Subscript[\[CapitalLambda], idx]
IDN[vgs_,vs_,idx_, temp_:""]:= E^(-((vs (1-\[Kappa]))/UT[temp])+(vgs \[Kappa])/UT[temp]) Subscript[I0, idx] Subscript[\[CapitalLambda], idx]

IGSP[id_, is_, idx_, temp_:""]:=((id is^(-1+\[Kappa]))/(Subscript[I0, idx] Subscript[\[CapitalLambda], idx]))^(-1/\[Kappa])
IGSN[id_, is_, idx_, temp_:""]:=((id is^(1-\[Kappa]))/(Subscript[I0, idx] Subscript[\[CapitalLambda], idx]))^(1/\[Kappa])

VGSP[id_,vs_,idx_, temp_:""]:=Simplify[vgs/. Refine[Solve[IDP[vgs,vs,idx,temp]==id,vgs,Reals],Subscript[I0, idx]>0&&id>0&&Subscript[\[CapitalLambda], idx]>0&&vs>=0]][[1]];
VGSN[id_,vs_,idx_, temp_:""]:=Simplify[vgs/. Refine[Solve[IDN[vgs,vs,idx,temp]==id,vgs,Reals],Subscript[I0, idx]>0&&id>0&&Subscript[\[CapitalLambda], idx]>0&&vs>=0]][[1]];

(* Synapse Circuit *)
SynapseBiasWeight[dimlessW_,leakSoma_,leakSynapse_]:=(dimlessW leakSoma^(1/\[Kappa]))/leakSynapse^(-1+1/\[Kappa]);
(* Soma Circuit *)
SomaBiasInput[dimlessI_, leakSoma_]:=dimlessI leakSoma
BiasLeak[\[Tau]_, cap_,temp_]:=(cap UT[temp])/\[Tau];

End[];
EndPackage[];
