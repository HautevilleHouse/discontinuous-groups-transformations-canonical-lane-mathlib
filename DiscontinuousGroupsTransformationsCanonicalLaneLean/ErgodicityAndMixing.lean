import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure ErgodicityPackage where
  groupAction : Type u
  invariantMeasure : Type v
  ergodic : Prop
  mixing : Prop
  decayOfCorrelations : Prop

def ErgodicityClosed (E : ErgodicityPackage) : Prop :=
  E.ergodic ∧ E.mixing ∧ E.decayOfCorrelations

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse