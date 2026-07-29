import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure KleinianGroupPackage where
  hyperbolicThreeSpace : Type u
  group : Type v
  groupAction : group → hyperbolicThreeSpace → hyperbolicThreeSpace
  discrete : Prop
  limitSetDefined : Prop
  domainOfDiscontinuity : Prop
  geometricFinite : Prop

structure KleinianGroupEvidence (K : KleinianGroupPackage) where
  discreteClosed : K.discrete
  limitSetDefinedClosed : K.limitSetDefined
  domainOfDiscontinuityClosed : K.domainOfDiscontinuity
  geometricFiniteClosed : K.geometricFinite

def KleinianGroupClosed (K : KleinianGroupPackage) : Prop :=
  K.discrete ∧ K.limitSetDefined ∧
  K.domainOfDiscontinuity ∧ K.geometricFinite

theorem kleinian_group_closed_from_evidence (K : KleinianGroupPackage)
    (E : KleinianGroupEvidence K) : KleinianGroupClosed K := by
  exact And.intro E.discreteClosed
    (And.intro E.limitSetDefinedClosed
      (And.intro E.domainOfDiscontinuityClosed E.geometricFiniteClosed))

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse
