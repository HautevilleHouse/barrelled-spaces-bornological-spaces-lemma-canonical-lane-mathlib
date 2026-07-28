import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

structure BarrelledBornologicalObject where
  barrelledSpace : BarrelledSpacePackage
  bornologicalSpace : BornologicalSpacePackage
  lemmaEvidence : BarrelledBornologicalLemmaEvidence (BarrelledBornologicalLemmaPackage.mk barrelledSpace bornologicalSpace ?_)
  conclusion : BarrelledBornologicalLemmaClosed (BarrelledBornologicalLemmaPackage.mk barrelledSpace bornologicalSpace ?_)

structure BarrelledBornologicalEndgameState where
  object : BarrelledBornologicalObject

structure AdmissibleClass where
  object : BarrelledBornologicalObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (BarrelledBornologicalLemmaClosed (BarrelledBornologicalLemmaPackage.mk A.object.barrelledSpace A.object.bornologicalSpace ?_)) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse
