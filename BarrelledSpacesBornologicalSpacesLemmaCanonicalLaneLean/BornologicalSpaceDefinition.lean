import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

structure BornologicalSpacePackage where
  carrier : Type
  topology : TopologicalSpace carrier
  vectorSpaceStructure : Module ℝ carrier
  bornology : Bornology carrier
  bornologicalProperty : Prop
  bornologicalPropertyTerm : bornologicalProperty

structure BornologicalSpaceEvidence (B : BornologicalSpacePackage) where
  bornologicalPropertyClosed : B.bornologicalProperty

def BornologicalSpaceClosed (B : BornologicalSpacePackage) : Prop :=
  B.bornologicalProperty

theorem bornological_space_closed_from_evidence
    (B : BornologicalSpacePackage) (E : BornologicalSpaceEvidence B) : BornologicalSpaceClosed B := by
  exact E.bornologicalPropertyClosed

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse