import ThreeFoldsCanonicalLaneLean.ThreeFoldGateLemmas

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

def ConstrainedThreeFoldClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_threefold_endgame (A : AdmissibleClass) :
    ConstrainedThreeFoldClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse