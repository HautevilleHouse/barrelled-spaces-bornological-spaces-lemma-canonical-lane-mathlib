import BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean.BarrelProperty

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

structure BornologicalPackage (P : BarrelPropertyPackage) where
  bornologyDefined : Prop
  boundedSets : Type u
  bornivorousSetCondition : Prop
  bornologicalConvergence : Prop

structure BornologicalEvidence {P : BarrelPropertyPackage} (B : BornologicalPackage P) where
  bornologyDefinedClosed : B.bornologyDefined
  boundedSetsClosed : B.boundedSets ≠ ∅
  bornivorousSetConditionClosed : B.bornivorousSetCondition
  bornologicalConvergenceClosed : B.bornologicalConvergence

def BornologicalClosed {P : BarrelPropertyPackage} (B : BornologicalPackage P) : Prop :=
  B.bornologyDefined ∧ (B.boundedSets ≠ ∅) ∧ B.bornivorousSetCondition ∧ B.bornologicalConvergence

theorem bornological_closed_from_evidence {P : BarrelPropertyPackage} (B : BornologicalPackage P) (E : BornologicalEvidence B) : BornologicalClosed B := by
  exact And.intro E.bornologyDefinedClosed (And.intro E.boundedSetsClosed (And.intro E.bornivorousSetConditionClosed E.bornologicalConvergenceClosed))

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse