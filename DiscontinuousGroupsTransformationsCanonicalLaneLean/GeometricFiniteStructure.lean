import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure GeometricFinitePackage where
  group : Type u
  convexCore : Type v
  convexCoreCompact : Prop
  cuspSet : Type w
  cuspSetFinite : Prop
  thickThinDecomposition : Prop

def GeometricFiniteClosed (G : GeometricFinitePackage) : Prop :=
  G.convexCoreCompact ∧ G.cuspSetFinite ∧ G.thickThinDecomposition

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse