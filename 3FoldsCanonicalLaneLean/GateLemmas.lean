import ThreeFoldsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse