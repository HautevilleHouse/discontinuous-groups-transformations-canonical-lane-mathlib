import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure QuotientRiemannSurface (G : FuchsianGroup) where
  quotientSpace : Type u
  quotientTopology : TopologicalSpace quotientSpace
  complexStructure : ComplexStructure quotientSpace
  genus : ℕ
  uniformization : Prop

structure QuotientRiemannSurfaceEvidence {G : FuchsianGroup} (Q : QuotientRiemannSurface G) where
  complexStructureClosed : Q.complexStructure
  uniformizationClosed : Q.uniformization

def QuotientRiemannSurfaceClosed {G : FuchsianGroup} (Q : QuotientRiemannSurface G) : Prop :=
  Q.complexStructure ∧ Q.uniformization

theorem quotient_riemann_surface_closed_from_evidence {G : FuchsianGroup} (Q : QuotientRiemannSurface G) (E : QuotientRiemannSurfaceEvidence Q) :
    QuotientRiemannSurfaceClosed Q := by
  exact And.intro E.complexStructureClosed E.uniformizationClosed

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse