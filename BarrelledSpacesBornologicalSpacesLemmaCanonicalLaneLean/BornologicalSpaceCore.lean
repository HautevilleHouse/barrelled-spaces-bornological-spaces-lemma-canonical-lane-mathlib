import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

structure BornologicalSpacePackage where
  space : Type u
  topology : TopologicalSpace space
  vectorSpace : Module ℝ space
  bornologicalProperty : Prop
  boundedSetClosure : Prop
  bornivoreBase : Prop

structure BornologicalSpaceEvidence (B : BornologicalSpacePackage) where
  bornologicalPropertyClosed : B.bornologicalProperty
  boundedSetClosureClosed : B.boundedSetClosure
  bornivoreBaseClosed : B.bornivoreBase

def BornologicalSpaceClosed (B : BornologicalSpacePackage) : Prop :=
  B.bornologicalProperty ∧ B.boundedSetClosure ∧ B.bornivoreBase

theorem bornological_space_closed_from_evidence (B : BornologicalSpacePackage)
    (E : BornologicalSpaceEvidence B) : BornologicalSpaceClosed B := by
  exact And.intro E.bornologicalPropertyClosed
    (And.intro E.boundedSetClosureClosed E.bornivoreBaseClosed)

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse