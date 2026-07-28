import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

structure BanachSteinhausPackage {B : BarrelledSpacePackage} {B' : BornologicalSpacePackage} where
  familyOfOperators : Set (B.carrier →ₗ[ℝ] B'.carrier)
  pointwiseBounded : ∀ x : B.carrier, ∃ M : ℝ, ∀ f ∈ familyOfOperators, ‖f x‖ ≤ M
  equicontinuous : Prop
  equicontinuousTerm : equicontinuous

structure BanachSteinhausEvidence {B : BarrelledSpacePackage} {B' : BornologicalSpacePackage}
    (S : BanachSteinhausPackage B B') where
  pointwiseBoundedClosed : S.pointwiseBounded
  equicontinuousClosed : S.equicontinuous

def BanachSteinhausClosed {B : BarrelledSpacePackage} {B' : BornologicalSpacePackage}
    (S : BanachSteinhausPackage B B') : Prop :=
  S.pointwiseBounded ∧ S.equicontinuous

theorem banach_steinhaus_closed_from_evidence
    {B : BarrelledSpacePackage} {B' : BornologicalSpacePackage}
    (S : BanachSteinhausPackage B B') (E : BanachSteinhausEvidence S) : BanachSteinhausClosed S := by
  exact And.intro E.pointwiseBoundedClosed E.equicontinuousClosed

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse