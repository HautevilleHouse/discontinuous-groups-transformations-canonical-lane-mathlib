import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure TeichmullerSpacePackage where
  riemannSurface : Type u
  marking : Type v
  teichmullerMetric : Prop
  complexStructureDeformation : Prop
  mappingClassGroupAction : Prop
  properDiscontinuityOfMCG : Prop

structure TeichmullerSpaceEvidence (T : TeichmullerSpacePackage) where
  teichmullerMetricClosed : T.teichmullerMetric
  complexStructureDeformationClosed : T.complexStructureDeformation
  mappingClassGroupActionClosed : T.mappingClassGroupAction
  properDiscontinuityOfMCGClosed : T.properDiscontinuityOfMCG

def TeichmullerSpaceClosed (T : TeichmullerSpacePackage) : Prop :=
  T.teichmullerMetric ∧ T.complexStructureDeformation ∧
  T.mappingClassGroupAction ∧ T.properDiscontinuityOfMCG

theorem teichmuller_space_closed_from_evidence (T : TeichmullerSpacePackage)
    (E : TeichmullerSpaceEvidence T) : TeichmullerSpaceClosed T := by
  exact And.intro E.teichmullerMetricClosed
    (And.intro E.complexStructureDeformationClosed
      (And.intro E.mappingClassGroupActionClosed E.properDiscontinuityOfMCGClosed))

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse
