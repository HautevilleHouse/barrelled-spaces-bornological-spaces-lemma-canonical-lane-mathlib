import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

structure BornologicalSpacePackage where
  underlyingSpace : Type u
  topology : TopologicalSpace underlyingSpace
  locallyConvex : Prop
  boundedLinearContinuous : Prop
  bornologicalCondition : boundedLinearContinuous

structure BornologicalSpaceEvidence (B : BornologicalSpacePackage) where
  locallyConvexClosed : B.locallyConvex
  boundedLinearContinuousClosed : B.boundedLinearContinuous

def BornologicalSpaceClosed (B : BornologicalSpacePackage) : Prop :=
  B.locallyConvex ∧ B.boundedLinearContinuous

theorem bornological_space_closed_from_evidence (B : BornologicalSpacePackage) (E : BornologicalSpaceEvidence B) : BornologicalSpaceClosed B := by
  exact And.intro E.locallyConvexClosed E.boundedLinearContinuousClosed

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse