import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure FundamentalDomain (G : FuchsianGroup) where
  domain : Set UpperHalfPlane
  tilingProperty : Prop
  measurableDomain : Prop
  boundaryNull : Prop

structure FundamentalDomainEvidence {G : FuchsianGroup} (D : FundamentalDomain G) where
  tilingPropertyClosed : D.tilingProperty
  measurableDomainClosed : D.measurableDomain
  boundaryNullClosed : D.boundaryNull

def FundamentalDomainClosed {G : FuchsianGroup} (D : FundamentalDomain G) : Prop :=
  D.tilingProperty ∧ D.measurableDomain ∧ D.boundaryNull

theorem fundamental_domain_closed_from_evidence {G : FuchsianGroup} (D : FundamentalDomain G) (E : FundamentalDomainEvidence D) :
    FundamentalDomainClosed D := by
  exact And.intro E.tilingPropertyClosed (And.intro E.measurableDomainClosed E.boundaryNullClosed)

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse