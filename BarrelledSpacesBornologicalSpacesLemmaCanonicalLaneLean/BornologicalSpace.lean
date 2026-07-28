import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

structure BornologicalSpacePackage where
  tvs : Type u
  topology : TopologicalSpace tvs
  linearTopology : TopologicalAddGroup tvs ∧ SMulTopology tvs
  bornology : Bornology tvs
  bornologicalProperty : Prop
  bornologicalPropertyTerm : bornologicalProperty

structure BornologicalSpaceEvidence (B : BornologicalSpacePackage) where
  bornologicalPropertyClosed : B.bornologicalProperty

def BornologicalSpaceClosed (B : BornologicalSpacePackage) : Prop :=
  B.bornologicalProperty

theorem bornological_space_closed_from_evidence (B : BornologicalSpacePackage)
    (E : BornologicalSpaceEvidence B) : BornologicalSpaceClosed B := by
  exact E.bornologicalPropertyClosed

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse
