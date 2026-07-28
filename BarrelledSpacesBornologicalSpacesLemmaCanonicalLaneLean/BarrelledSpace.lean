import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean

structure BarrelledSpacePackage where
  tvs : Type u
  topology : TopologicalSpace tvs
  linearTopology : TopologicalAddGroup tvs ∧ SMulTopology tvs
  barrelFamily : Set (Set tvs)
  barrelProperties : ∀ B ∈ barrelFamily, Balanced B ∧ Absorbent B ∧ Closed B
  barrelledProperty : Prop
  barrelledPropertyTerm : barrelledProperty

structure BarrelledSpaceEvidence (B : BarrelledSpacePackage) where
  barrelPropertiesClosed : ∀ (Bset : Set B.tvs), Bset ∈ B.barrelFamily → (Balanced Bset ∧ Absorbent Bset ∧ Closed Bset)
  barrelledPropertyClosed : B.barrelledProperty

def BarrelledSpaceClosed (B : BarrelledSpacePackage) : Prop :=
  (∀ Bset ∈ B.barrelFamily, Balanced Bset ∧ Absorbent Bset ∧ Closed Bset) ∧ B.barrelledProperty

theorem barrelled_space_closed_from_evidence (B : BarrelledSpacePackage)
    (E : BarrelledSpaceEvidence B) : BarrelledSpaceClosed B := by
  exact And.intro E.barrelPropertiesClosed E.barrelledPropertyClosed

end BarrelledSpacesBornologicalSpacesLemmaCanonicalLaneLean
end HautevilleHouse
