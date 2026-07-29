import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

structure PoincareSeries (G : FuchsianGroup) where
  weight : Int
  absoluteConvergence : Prop
  automorphicTransformation : Prop
  seriesDefined : Prop

structure PoincareSeriesEvidence {G : FuchsianGroup} (P : PoincareSeries G) where
  absoluteConvergenceClosed : P.absoluteConvergence
  automorphicTransformationClosed : P.automorphicTransformation
  seriesDefinedClosed : P.seriesDefined

def PoincareSeriesClosed {G : FuchsianGroup} (P : PoincareSeries G) : Prop :=
  P.absoluteConvergence ∧ P.automorphicTransformation ∧ P.seriesDefined

theorem poincare_series_closed_from_evidence {G : FuchsianGroup} (P : PoincareSeries G) (E : PoincareSeriesEvidence P) :
    PoincareSeriesClosed P := by
  exact And.intro E.absoluteConvergenceClosed (And.intro E.automorphicTransformationClosed E.seriesDefinedClosed)

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse