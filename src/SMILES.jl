module SMILES
    using SimpleWeightedGraphs, LightGraphs, GraphPlot, Compose

    include("Elements.jl")
    export bondoperators, specialoperators, operators, bonds, valence,
            aliphatics, aromatics, bracket, bracket_aromatic, isoperator,
            isbondoperator, isspecialoperator, ispm, FindNumerics, FindPMs,
            Element

    include("ReadFns.jl")
    export ReadNextElement, ReadNextNumeric, ReadNextCharge

    include("Brackets.jl")
    export BracketState, BracketParseException, ParseBracket

    include("SMILESParser.jl")
    export SMILESParseException, ParseSMILES

end

#S = "C1CCCCC1C1CCCCC1" #2 cyclohexanes bridged
#S = "C12(CCCCC1)CCCCC2" #Spiro
#S = "C1CCC2(C1)CCCC2"
#S = "C12(C(CCC)CCCC1)CCCCC2"
#S = "C[CH4+](OC(OCC)CC)CC"
# MoleculeGraph, MolecularData = ParseSMILES( "C12(CCCCC1)CCCCC2" )
# gplot( Graph( adjacency_matrix( MoleculeGraph ) ) )
# println("Wuh")
