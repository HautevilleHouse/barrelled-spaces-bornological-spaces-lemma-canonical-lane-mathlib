import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean.BarrelledSpacePackage
import HautevilleHouse.BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean.BornologicalSpacePackage

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | PoincareAdmittedObject.mk _ _ _ _ _ h => h

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedBarrelledBornologicalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_barrelled_bornological_endgame (A : AdmissibleClass) :
    ConstrainedBarrelledBornologicalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse