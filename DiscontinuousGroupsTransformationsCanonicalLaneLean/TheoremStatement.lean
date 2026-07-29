import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure DiscontinuousGroupsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DiscontinuousGroupsAdmittedObject where
  space : DiscontinuousGroupsSpace
  discreteGroupAction : Prop
  properlyDiscontinuous : Prop
  cocompact : Prop
  conclusion : (discreteGroupAction ∧ properlyDiscontinuous ∧ cocompact)

structure DiscontinuousGroupsEndgameState where
  object : DiscontinuousGroupsAdmittedObject

def DiscontinuousGroupsWitnessClosed (O : DiscontinuousGroupsAdmittedObject) : Prop :=
  O.conclusion

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse