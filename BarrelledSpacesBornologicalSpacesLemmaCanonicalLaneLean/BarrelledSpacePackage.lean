import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

structure BarrelledSpacePackage where
  underlyingSpace : Type u
  topology : TopologicalSpace underlyingSpace
  locallyConvex : Prop
  barrelIsNeighborhood : Prop
  barrelledCondition : barrelIsNeighborhood

structure BarrelledSpaceEvidence (B : BarrelledSpacePackage) where
  locallyConvexClosed : B.locallyConvex
  barrelIsNeighborhoodClosed : B.barrelIsNeighborhood

def BarrelledSpaceClosed (B : BarrelledSpacePackage) : Prop :=
  B.locallyConvex ∧ B.barrelIsNeighborhood

theorem barrelled_space_closed_from_evidence (B : BarrelledSpacePackage) (E : BarrelledSpaceEvidence B) : BarrelledSpaceClosed B := by
  exact And.intro E.locallyConvexClosed E.barrelIsNeighborhoodClosed

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse