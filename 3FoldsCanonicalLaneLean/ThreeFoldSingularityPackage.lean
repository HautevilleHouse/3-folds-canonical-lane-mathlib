import ThreeFoldsCanonicalLaneLean.MinimalModelPackage

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure SingularityPackage where
  terminalType : Prop
  canonicalType : Prop
  logTerminal : Prop
  resolutionExists : Prop
  discrepancyControlled : Prop

structure SingularityEvidence (S : SingularityPackage) where
  terminalTypeClosed : S.terminalType
  canonicalTypeClosed : S.canonicalType
  logTerminalClosed : S.logTerminal
  resolutionExistsClosed : S.resolutionExists
  discrepancyControlledClosed : S.discrepancyControlled

def SingularityClosed (S : SingularityPackage) : Prop :=
  S.terminalType ∧ S.canonicalType ∧ S.logTerminal ∧ S.resolutionExists ∧ S.discrepancyControlled

theorem singularity_closed_from_evidence (S : SingularityPackage) (E : SingularityEvidence S) :
    SingularityClosed S := by
  exact And.intro E.terminalTypeClosed
    (And.intro E.canonicalTypeClosed
      (And.intro E.logTerminalClosed
        (And.intro E.resolutionExistsClosed E.discrepancyControlledClosed)))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse