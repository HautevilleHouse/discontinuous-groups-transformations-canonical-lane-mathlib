import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure KleinianGroupPackage where
  group : Type u
  actingOnThreeSphere : Prop
  discreteSubgroup : Prop
  limitSet : Type v
  hausdorffDimension : Prop
  conicalDensity : Prop

def KleinianGroupClosed (K : KleinianGroupPackage) : Prop :=
  K.discreteSubgroup ∧ K.actingOnThreeSphere ∧ K.hausdorffDimension ∧ K.conicalDensity

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse