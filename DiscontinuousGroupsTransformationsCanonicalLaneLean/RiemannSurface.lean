import DiscontinuousGroupsTransformationsCanonicalLaneLean.MappingClassGroup

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure RiemannSurfacePackage {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    (D : DiscontinuousActionPackage G X) (F : FundamentalDomainPackage D)
    (M : MappingClassGroupPackage D F) where
  surface : Type w
  complexStructure : ComplexStructure surface
  uniformization : Prop
  groupIsFuchsian : Prop

def RiemannSurfaceClosed {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousActionPackage G X} {F : FundamentalDomainPackage D}
    {M : MappingClassGroupPackage D F} (R : RiemannSurfacePackage D F M) : Prop :=
  R.uniformization ∧ R.groupIsFuchsian

structure RiemannSurfaceEvidence {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousActionPackage G X} {F : FundamentalDomainPackage D}
    {M : MappingClassGroupPackage D F} (R : RiemannSurfacePackage D F M) where
  uniformizationClosed : R.uniformization
  groupIsFuchsianClosed : R.groupIsFuchsian

theorem riemann_surface_closed_from_evidence
    {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousActionPackage G X} {F : FundamentalDomainPackage D}
    {M : MappingClassGroupPackage D F} (R : RiemannSurfacePackage D F M)
    (E : RiemannSurfaceEvidence R) : RiemannSurfaceClosed R := by
  exact And.intro E.uniformizationClosed E.groupIsFuchsianClosed

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse