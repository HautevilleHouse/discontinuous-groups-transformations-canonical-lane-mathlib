import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure DiscontinuousGroupActionPackage where
  group : Type u
  space : Type v
  topology : TopologicalSpace space
  groupTopology : TopologicalSpace group
  action : group → space → space
  properlyDiscontinuous : Prop
  cocompact : Prop
  coveringMapQuotient : Prop
  fundamentalDomain : Prop

structure DiscontinuousGroupActionEvidence (G : DiscontinuousGroupActionPackage) where
  properlyDiscontinuousClosed : G.properlyDiscontinuous
  cocompactClosed : G.cocompact
  coveringMapQuotientClosed : G.coveringMapQuotient
  fundamentalDomainClosed : G.fundamentalDomain

def DiscontinuousGroupActionClosed (G : DiscontinuousGroupActionPackage) : Prop :=
  G.properlyDiscontinuous ∧ G.cocompact ∧ G.coveringMapQuotient ∧ G.fundamentalDomain

theorem discontinuous_group_action_closed_from_evidence
    (G : DiscontinuousGroupActionPackage) (E : DiscontinuousGroupActionEvidence G) :
    DiscontinuousGroupActionClosed G := by
  exact And.intro E.properlyDiscontinuousClosed
    (And.intro E.cocompactClosed
      (And.intro E.coveringMapQuotientClosed E.fundamentalDomainClosed))

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse