import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure FuchsianGroupPackage where
  group : Type u
  hyperbolicPlane : Type v
  topology : TopologicalSpace hyperbolicPlane
  isometryAction : group → hyperbolicPlane → hyperbolicPlane
  discrete : Prop
  orientationPreserving : Prop
  signature : Prop
  limitSet : Prop
  hyperbolicAreaFinite : Prop

structure FuchsianGroupEvidence (F : FuchsianGroupPackage) where
  discreteClosed : F.discrete
  orientationPreservingClosed : F.orientationPreserving
  signatureClosed : F.signature
  limitSetClosed : F.limitSet
  hyperbolicAreaFiniteClosed : F.hyperbolicAreaFinite

def FuchsianGroupClosed (F : FuchsianGroupPackage) : Prop :=
  F.discrete ∧ F.orientationPreserving ∧ F.signature ∧ F.limitSet ∧ F.hyperbolicAreaFinite

theorem fuchsian_group_closed_from_evidence
    (F : FuchsianGroupPackage) (E : FuchsianGroupEvidence F) :
    FuchsianGroupClosed F := by
  exact And.intro E.discreteClosed
    (And.intro E.orientationPreservingClosed
      (And.intro E.signatureClosed
        (And.intro E.limitSetClosed E.hyperbolicAreaFiniteClosed)))

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse