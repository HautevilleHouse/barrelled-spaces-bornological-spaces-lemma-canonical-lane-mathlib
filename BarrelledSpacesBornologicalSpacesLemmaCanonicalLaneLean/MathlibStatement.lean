import BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "barrelled-bornological-lemma",
  theoremObject := "Barrelled Spaces Bornological Spaces Lemma",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

def theoremSpecificEndgamePilotClosed : Prop :=
  ∀ A : AdmissibleClass, ConstrainedBarrelledBornologicalClosure A

theorem theorem_specific_endgame_pilot_checked : theoremSpecificEndgamePilotClosed := by
  intro A
  exact constrained_barrelled_bornological_endgame A

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse