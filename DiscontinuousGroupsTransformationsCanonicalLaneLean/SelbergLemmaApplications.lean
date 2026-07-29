import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure SelbergLemmaPackage where
  group : Type u
  riemannSurface : Type v
  topology : TopologicalSpace riemannSurface
  groupAction : group → riemannSurface → riemannSurface
  finitelyGenerated : Prop
  torsionFreeSubgroup : Prop
  subgroupIndexFinite : Prop
  spectralGap : Prop

structure SelbergLemmaEvidence (S : SelbergLemmaPackage) where
  finitelyGeneratedClosed : S.finitelyGenerated
  torsionFreeSubgroupClosed : S.torsionFreeSubgroup
  subgroupIndexFiniteClosed : S.subgroupIndexFinite
  spectralGapClosed : S.spectralGap

def SelbergLemmaClosed (S : SelbergLemmaPackage) : Prop :=
  S.finitelyGenerated ∧ S.torsionFreeSubgroup ∧ S.subgroupIndexFinite ∧ S.spectralGap

theorem selberg_lemma_closed_from_evidence
    (S : SelbergLemmaPackage) (E : SelbergLemmaEvidence S) :
    SelbergLemmaClosed S := by
  exact And.intro E.finitelyGeneratedClosed
    (And.intro E.torsionFreeSubgroupClosed
      (And.intro E.subgroupIndexFiniteClosed E.spectralGapClosed))

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse