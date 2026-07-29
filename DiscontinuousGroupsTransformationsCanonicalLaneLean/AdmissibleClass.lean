import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure DiscontinuousGroupAdmittedObject where
  group : FuchsianGroup
  fundamentalDomain : FundamentalDomain group
  poincareSeries : PoincareSeries group
  quotientSurface : QuotientRiemannSurface group
  conclusion : QuotientRiemannSurfaceClosed quotientSurface

structure AdmissibleClass where
  object : DiscontinuousGroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DiscontinuousGroupAdmittedObject.conclusion A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse