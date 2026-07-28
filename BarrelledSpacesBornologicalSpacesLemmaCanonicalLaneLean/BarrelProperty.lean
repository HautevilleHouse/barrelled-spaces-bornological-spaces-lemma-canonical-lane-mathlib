import BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

structure BarrelPropertyPackage where
  barrelCovered : Prop
  absorbingClosed : Prop
  balancedClosed : Prop
  bornivorousClosed : Prop

structure BarrelPropertyEvidence (P : BarrelPropertyPackage) where
  barrelCoveredClosed : P.barrelCovered
  absorbingClosedClosed : P.absorbingClosed
  balancedClosedClosed : P.balancedClosed
  bornivorousClosedClosed : P.bornivorousClosed

def BarrelPropertyClosed (P : BarrelPropertyPackage) : Prop :=
  P.barrelCovered ∧ P.absorbingClosed ∧ P.balancedClosed ∧ P.bornivorousClosed

theorem barrel_property_closed_from_evidence (P : BarrelPropertyPackage) (E : BarrelPropertyEvidence P) : BarrelPropertyClosed P := by
  exact And.intro E.barrelCoveredClosed (And.intro E.absorbingClosedClosed (And.intro E.balancedClosedClosed E.bornivorousClosedClosed))

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse