import canonicalLaneMathlib.LogTerminalPackage

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure LogTerminalPackage (V : ThreeFoldAdmittedObject) where
  logTerminalSingularities : Prop
  logCanonicalSingularities : Prop
  pltSingularities : Prop
  dltSingularities : Prop

structure LogTerminalEvidence {V : ThreeFoldAdmittedObject} (L : LogTerminalPackage V) where
  logTerminalSingularitiesClosed : L.logTerminalSingularities
  logCanonicalSingularitiesClosed : L.logCanonicalSingularities
  pltSingularitiesClosed : L.pltSingularities
  dltSingularitiesClosed : L.dltSingularities

def LogTerminalClosed {V : ThreeFoldAdmittedObject} (L : LogTerminalPackage V) : Prop :=
  L.logTerminalSingularities ∧ L.logCanonicalSingularities ∧ L.pltSingularities ∧ L.dltSingularities

theorem log_terminal_closed_from_evidence
    {V : ThreeFoldAdmittedObject} (L : LogTerminalPackage V) (E : LogTerminalEvidence L) :
    LogTerminalClosed L := by
  exact And.intro E.logTerminalSingularitiesClosed
    (And.intro E.logCanonicalSingularitiesClosed
      (And.intro E.pltSingularitiesClosed E.dltSingularitiesClosed))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse