import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure FuchsianGroup where
  group : Type u
  groupOperation : Group group
  actionOnUpperHalfPlane : group → UpperHalfPlane → UpperHalfPlane
  properlyDiscontinuous : Prop
  discreteSubgroup : Prop

structure FuchsianGroupEvidence (G : FuchsianGroup) where
  properlyDiscontinuousClosed : G.properlyDiscontinuous
  discreteSubgroupClosed : G.discreteSubgroup

def FuchsianGroupClosed (G : FuchsianGroup) : Prop :=
  G.properlyDiscontinuous ∧ G.discreteSubgroup

theorem fuchsian_group_closed_from_evidence (G : FuchsianGroup) (E : FuchsianGroupEvidence G) :
    FuchsianGroupClosed G := by
  exact And.intro E.properlyDiscontinuousClosed E.discreteSubgroupClosed

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse