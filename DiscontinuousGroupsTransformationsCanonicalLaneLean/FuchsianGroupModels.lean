import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure FuchsianGroupPackage where
  group : Type u
  groupOperation : group → group → group
  discreteSubgroup : Prop
  actingOnUpperHalfPlane : Prop
  fundamentalDomain : Type v
  fundamentalDomainClosed : Prop
  limitSetDefined : Prop

def FuchsianGroupClosed (F : FuchsianGroupPackage) : Prop :=
  F.discreteSubgroup ∧ F.actingOnUpperHalfPlane ∧ F.fundamentalDomainClosed ∧ F.limitSetDefined

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse