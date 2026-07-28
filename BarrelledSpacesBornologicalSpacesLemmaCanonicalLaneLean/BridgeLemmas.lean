import canonicalLaneMathlib.AdmissibleClass
import BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BarrelledBornologicalLemmaClosed (BarrelledBornologicalLemmaPackage.mk A.object.barrelledSpace A.object.bornologicalSpace A.object.lemmaEvidence.1)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse
