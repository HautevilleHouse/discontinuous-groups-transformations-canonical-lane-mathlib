import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsCanonicalLaneLean

def ConstrainedDGTClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dgt_endgame (A : AdmissibleClass) :
    ConstrainedDGTClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscontinuousGroupsTransformationsCanonicalLaneLean
end HautevilleHouse