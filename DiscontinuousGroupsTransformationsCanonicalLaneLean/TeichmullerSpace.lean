import DiscontinuousGroupsTransformationsCanonicalLaneLean.RiemannSurface

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure TeichmullerSpacePackage {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    (D : DiscontinuousActionPackage G X) (F : FundamentalDomainPackage D)
    (M : MappingClassGroupPackage D F) (R : RiemannSurfacePackage D F M) where
  teichmullerSpace : Type w
  complexStructure : ComplexStructure teichmullerSpace
  mappingClassGroupAction : Prop
  properlyDiscontinuous : Prop

def TeichmullerSpaceClosed {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousActionPackage G X} {F : FundamentalDomainPackage D}
    {M : MappingClassGroupPackage D F} {R : RiemannSurfacePackage D F M}
    (T : TeichmullerSpacePackage D F M R) : Prop :=
  T.mappingClassGroupAction ∧ T.properlyDiscontinuous

structure TeichmullerSpaceEvidence {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousActionPackage G X} {F : FundamentalDomainPackage D}
    {M : MappingClassGroupPackage D F} {R : RiemannSurfacePackage D F M}
    (T : TeichmullerSpacePackage D F M R) where
  mappingClassGroupActionClosed : T.mappingClassGroupAction
  properlyDiscontinuousClosed : T.properlyDiscontinuous

theorem teichmuller_space_closed_from_evidence
    {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousActionPackage G X} {F : FundamentalDomainPackage D}
    {M : MappingClassGroupPackage D F} {R : RiemannSurfacePackage D F M}
    (T : TeichmullerSpacePackage D F M R) (E : TeichmullerSpaceEvidence T) :
    TeichmullerSpaceClosed T := by
  exact And.intro E.mappingClassGroupActionClosed E.properlyDiscontinuousClosed

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse