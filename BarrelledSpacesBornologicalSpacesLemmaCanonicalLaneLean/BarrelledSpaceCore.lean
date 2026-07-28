import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

structure BarrelledSpacePackage where
  space : Type u
  topology : TopologicalSpace space
  vectorSpace : Module ℝ space
  barrelledProperty : Prop
  barrelClosed : Prop
  absorbingBarrel : Prop

structure BarrelledSpaceEvidence (B : BarrelledSpacePackage) where
  barrelledPropertyClosed : B.barrelledProperty
  barrelClosedClosed : B.barrelClosed
  absorbingBarrelClosed : B.absorbingBarrel

def BarrelledSpaceClosed (B : BarrelledSpacePackage) : Prop :=
  B.barrelledProperty ∧ B.barrelClosed ∧ B.absorbingBarrel

theorem barrelled_space_closed_from_evidence (B : BarrelledSpacePackage)
    (E : BarrelledSpaceEvidence B) : BarrelledSpaceClosed B := by
  exact And.intro E.barrelledPropertyClosed
    (And.intro E.barrelClosedClosed E.absorbingBarrelClosed)

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse