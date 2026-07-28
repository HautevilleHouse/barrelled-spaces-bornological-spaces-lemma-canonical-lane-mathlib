import Mathlib.Topology.Basic
import Mathlib.Analysis.Convex.Barrelled
import Mathlib.Topology.Bornology.Basic

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

structure BarrelledBornologicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  bornology : Bornology carrier
  barrelled : Prop
  bornological : Prop

structure BarrelledBornologicalAdmittedObject where
  space : BarrelledBornologicalSpace
  barrelledCondition : space.barrelled
  bornologicalCondition : space.bornological
  lemmaConclusion : barrelledCondition → bornologicalCondition
  conclusion : lemmaConclusion barrelledCondition

def BarrelledBornologicalWitnessClosed (O : BarrelledBornologicalAdmittedObject) : Prop :=
  O.lemmaConclusion O.barrelledCondition = O.bornologicalCondition

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse