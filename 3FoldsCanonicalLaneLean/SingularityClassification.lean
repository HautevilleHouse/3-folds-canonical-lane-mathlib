import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ThreefoldsCanonicalLaneLean.MinimalModelProgram

namespace HautevilleHouse
namespace ThreefoldsCanonicalLaneLean

structure SingularityClassification {K : CanonicalBundlePackage} (M : MinimalModelProgram K) where
  terminalSingularities : Prop
  dltSingularities : Prop
  canonicalSingularities : Prop
  
structure SingularityEvidence {K : CanonicalBundlePackage} {M : MinimalModelProgram K}
    (S : SingularityClassification M) where
  terminalSingularitiesClosed : S.terminalSingularities
  dltSingularitiesClosed : S.dltSingularities
  canonicalSingularitiesClosed : S.canonicalSingularities

def SingularityClosed {K : CanonicalBundlePackage} {M : MinimalModelProgram K}
    (S : SingularityClassification M) : Prop :=
  S.terminalSingularities ∧ S.dltSingularities ∧ S.canonicalSingularities

theorem singularity_closed_from_evidence {K : CanonicalBundlePackage} {M : MinimalModelProgram K}
    (S : SingularityClassification M) (E : SingularityEvidence S) : SingularityClosed S := by
  exact And.intro E.terminalSingularitiesClosed (And.intro E.dltSingularitiesClosed E.canonicalSingularitiesClosed)

end ThreefoldsCanonicalLaneLean
end HautevilleHouse