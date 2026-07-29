import DiscontinuousGroupsTransformationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure DiscontinuousActionPackage (G : Type u) (X : Type v) [TopologicalSpace X] [Group G] where
  action : G → X → X
  properlyDiscontinuous : Prop
  noFixedPoints : Prop
  quotientSpace : Type w
  quotientTopology : TopologicalSpace quotientSpace
  coveringMap : X → quotientSpace

structure DiscontinuousActionEvidence {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    (D : DiscontinuousActionPackage G X) where
  properlyDiscontinuousClosed : D.properlyDiscontinuous
  noFixedPointsClosed : D.noFixedPoints

def DiscontinuousActionClosed {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    (D : DiscontinuousActionPackage G X) : Prop :=
  D.properlyDiscontinuous ∧ D.noFixedPoints

theorem discontinuous_action_closed_from_evidence
    {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    (D : DiscontinuousActionPackage G X) (E : DiscontinuousActionEvidence D) :
    DiscontinuousActionClosed D := by
  exact And.intro E.properlyDiscontinuousClosed E.noFixedPointsClosed

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse