import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ThreefoldsCanonicalLaneLean.SingularityClassification

namespace HautevilleHouse
namespace ThreefoldsCanonicalLaneLean

structure TerminationPackage {K : CanonicalBundlePackage} {M : MinimalModelProgram K}
    {S : SingularityClassification M} where
  finiteSteps : Prop
  noInfiniteChains : Prop
  
structure TerminationEvidence {K : CanonicalBundlePackage} {M : MinimalModelProgram K}
    {S : SingularityClassification M} (T : TerminationPackage S) where
  finiteStepsClosed : T.finiteSteps
  noInfiniteChainsClosed : T.noInfiniteChains

def TerminationClosed {K : CanonicalBundlePackage} {M : MinimalModelProgram K}
    {S : SingularityClassification M} (T : TerminationPackage S) : Prop :=
  T.finiteSteps ∧ T.noInfiniteChains

theorem termination_closed_from_evidence {K : CanonicalBundlePackage} {M : MinimalModelProgram K}
    {S : SingularityClassification M} (T : TerminationPackage S)
    (E : TerminationEvidence T) : TerminationClosed T := by
  exact And.intro E.finiteStepsClosed E.noInfiniteChainsClosed

end ThreefoldsCanonicalLaneLean
end HautevilleHouse