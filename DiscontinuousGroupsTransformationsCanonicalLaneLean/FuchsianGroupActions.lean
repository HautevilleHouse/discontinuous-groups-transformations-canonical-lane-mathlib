import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure FuchsianGroupPackage where
  hyperbolicSurface : Type u
  group : Type v
  groupAction : group → hyperbolicSurface → hyperbolicSurface
  properlyDiscontinuous : Prop
  fundamentalDomainExists : Prop
  signatureDetermined : Prop
  tracesAlgebraic : Prop

structure FuchsianGroupEvidence (F : FuchsianGroupPackage) where
  properlyDiscontinuousClosed : F.properlyDiscontinuous
  fundamentalDomainExistsClosed : F.fundamentalDomainExists
  signatureDeterminedClosed : F.signatureDetermined
  tracesAlgebraicClosed : F.tracesAlgebraic

def FuchsianGroupClosed (F : FuchsianGroupPackage) : Prop :=
  F.properlyDiscontinuous ∧ F.fundamentalDomainExists ∧
  F.signatureDetermined ∧ F.tracesAlgebraic

theorem fuchsian_group_closed_from_evidence (F : FuchsianGroupPackage)
    (E : FuchsianGroupEvidence F) : FuchsianGroupClosed F := by
  exact And.intro E.properlyDiscontinuousClosed
    (And.intro E.fundamentalDomainExistsClosed
      (And.intro E.signatureDeterminedClosed E.tracesAlgebraicClosed))

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse
