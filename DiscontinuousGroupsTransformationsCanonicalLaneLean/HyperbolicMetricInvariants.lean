import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure HyperbolicMetricPackage where
  metricSpace : Type u
  hyperbolicMetric : Type v
  isComplete : Prop
  isCATMinusOne : Prop
  volumeInvariant : Prop
  spectrumInvariant : Prop

def HyperbolicMetricClosed (H : HyperbolicMetricPackage) : Prop :=
  H.isComplete ∧ H.isCATMinusOne ∧ H.volumeInvariant ∧ H.spectrumInvariant

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse