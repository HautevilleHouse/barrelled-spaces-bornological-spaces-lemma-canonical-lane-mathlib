import canonicalLaneMathlib.AdmissibleClass
import BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean.BridgeLemmas
import BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

def ConstrainedBarrelledBornologicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_barrelled_bornological_endgame (A : AdmissibleClass) :
    ConstrainedBarrelledBornologicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse
