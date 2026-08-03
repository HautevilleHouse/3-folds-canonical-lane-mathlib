import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure SingularityPackage where
  terminalSingularities : Prop
  canonicalSingularities : Prop
  classificationRefined : Prop
  resolutionExists : Prop

structure SingularityEvidence (S : SingularityPackage) where
  terminalSingularitiesClosed : S.terminalSingularities
  canonicalSingularitiesClosed : S.canonicalSingularities
  classificationRefinedClosed : S.classificationRefined
  resolutionExistsClosed : S.resolutionExists

def SingularityClosed (S : SingularityPackage) : Prop :=
  S.terminalSingularities ∧ S.canonicalSingularities ∧ S.classificationRefined ∧ S.resolutionExists

theorem singularity_closed_from_evidence (S : SingularityPackage) (E : SingularityEvidence S) :
    SingularityClosed S := by
  exact And.intro E.terminalSingularitiesClosed (And.intro E.canonicalSingularitiesClosed (And.intro E.classificationRefinedClosed E.resolutionExistsClosed))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse