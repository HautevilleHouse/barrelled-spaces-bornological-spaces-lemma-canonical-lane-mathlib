import BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean.BornologicalPackage

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

structure CompletenessBridge {P : BarrelPropertyPackage} {B : BornologicalPackage P} where
  barrelledImpliesBornivorous : Prop
  completenessCondition : Prop
  bridgeEvidence : barrelledImpliesBornivorous ∧ completenessCondition

def CompletenessBridgeClosed {P : BarrelPropertyPackage} {B : BornologicalPackage P} (C : CompletenessBridge B) : Prop :=
  C.barrelledImpliesBornivorous ∧ C.completenessCondition

theorem completeness_bridge_closed_from_evidence {P : BarrelPropertyPackage} {B : BornologicalPackage P} (C : CompletenessBridge B) : CompletenessBridgeClosed C := by
  exact C.bridgeEvidence

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse