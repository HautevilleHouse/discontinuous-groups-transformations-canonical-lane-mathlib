import DiscontinuousGroupsTransformationsCanonicalLaneLean.FundamentalDomain

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure MappingClassGroupPackage {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    (D : DiscontinuousActionPackage G X) (F : FundamentalDomainPackage D) where
  mappingClassGroup : Type w
  groupStructure : Group mappingClassGroup
  actionOnTeichmuller : Prop
  properlyDiscontinuousActionOnTeichmuller : Prop

def MappingClassGroupClosed {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousActionPackage G X} {F : FundamentalDomainPackage D}
    (M : MappingClassGroupPackage D F) : Prop :=
  M.actionOnTeichmuller ∧ M.properlyDiscontinuousActionOnTeichmuller

structure MappingClassGroupEvidence {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousActionPackage G X} {F : FundamentalDomainPackage D}
    (M : MappingClassGroupPackage D F) where
  actionOnTeichmullerClosed : M.actionOnTeichmuller
  properlyDiscontinuousActionOnTeichmullerClosed : M.properlyDiscontinuousActionOnTeichmuller

theorem mapping_class_group_closed_from_evidence
    {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousActionPackage G X} {F : FundamentalDomainPackage D}
    (M : MappingClassGroupPackage D F) (E : MappingClassGroupEvidence M) :
    MappingClassGroupClosed M := by
  exact And.intro E.actionOnTeichmullerClosed E.properlyDiscontinuousActionOnTeichmullerClosed

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse