import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

structure BarrelledSpacePackage where
  carrier : Type
  topology : TopologicalSpace carrier
  vectorSpaceStructure : Module ℝ carrier
  locallyConvex : Prop
  barrelledProperty : everyBarrelIsNeighborhood
  barrelledPropertyTerm : barrelledProperty

structure BarrelledSpaceEvidence (B : BarrelledSpacePackage) where
  locallyConvexClosed : B.locallyConvex
  barrelledPropertyClosed : B.barrelledProperty

def BarrelledSpaceClosed (B : BarrelledSpacePackage) : Prop :=
  B.locallyConvex ∧ B.barrelledProperty

theorem barrelled_space_closed_from_evidence
    (B : BarrelledSpacePackage) (E : BarrelledSpaceEvidence B) : BarrelledSpaceClosed B := by
  exact And.intro E.locallyConvexClosed E.barrelledPropertyClosed

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse