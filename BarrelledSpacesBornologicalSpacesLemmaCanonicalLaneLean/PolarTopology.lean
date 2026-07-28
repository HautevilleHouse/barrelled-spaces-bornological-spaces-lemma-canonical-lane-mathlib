import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

structure PolarTopologyPackage {B : BarrelledSpacePackage} {B' : BornologicalSpacePackage} where
  dualPairing : B.carrier → B'.carrier → ℝ
  polarTopology : TopologicalSpace B'.carrier
  polarTopologyBornological : B'.bornology = Bornology.ofTopologicalSpace polarTopology
  polarTopologyBornologicalTerm : polarTopologyBornological

structure PolarTopologyEvidence {B : BarrelledSpacePackage} {B' : BornologicalSpacePackage}
    (P : PolarTopologyPackage B B') where
  polarTopologyBornologicalClosed : P.polarTopologyBornological

def PolarTopologyClosed {B : BarrelledSpacePackage} {B' : BornologicalSpacePackage}
    (P : PolarTopologyPackage B B') : Prop :=
  P.polarTopologyBornological

theorem polar_topology_closed_from_evidence
    {B : BarrelledSpacePackage} {B' : BornologicalSpacePackage}
    (P : PolarTopologyPackage B B') (E : PolarTopologyEvidence P) : PolarTopologyClosed P := by
  exact E.polarTopologyBornologicalClosed

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse