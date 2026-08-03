import canonicalLaneMathlib.MoriProgramRoute

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure MoriProgramRouteObligations (V : ThreeFoldAdmittedObject) where
  minimalModel : MinimalModelPackage V
  canonicalModel : CanonicalModelPackage V
  logTerminal : LogTerminalPackage V
  abundanceConjecture : Prop

structure MoriProgramRouteEvidence {V : ThreeFoldAdmittedObject} (R : MoriProgramRouteObligations V) where
  minimalModelClosed : MinimalModelClosed R.minimalModel
  canonicalModelClosed : CanonicalModelClosed R.canonicalModel
  logTerminalClosed : LogTerminalClosed R.logTerminal
  abundanceConjectureClosed : R.abundanceConjecture

def MoriProgramRouteClosed {V : ThreeFoldAdmittedObject} (R : MoriProgramRouteObligations V) : Prop :=
  MinimalModelClosed R.minimalModel ∧ CanonicalModelClosed R.canonicalModel ∧
  LogTerminalClosed R.logTerminal ∧ R.abundanceConjecture

def mori_program_route_evidence_from_packages
    {V : ThreeFoldAdmittedObject} (M : MinimalModelPackage V) (ME : MinimalModelEvidence M)
    (C : CanonicalModelPackage V) (CE : CanonicalModelEvidence C)
    (L : LogTerminalPackage V) (LE : LogTerminalEvidence L)
    (abundance : Prop) (abundanceTerm : abundance) :
    MoriProgramRouteEvidence {
      minimalModel := M
      canonicalModel := C
      logTerminal := L
      abundanceConjecture := abundance
    } := {
  minimalModelClosed := minimal_model_closed_from_evidence M ME
  canonicalModelClosed := canonical_model_closed_from_evidence C CE
  logTerminalClosed := log_terminal_closed_from_evidence L LE
  abundanceConjectureClosed := abundanceTerm
}

theorem mori_program_route_closed_from_evidence
    {V : ThreeFoldAdmittedObject} (R : MoriProgramRouteObligations V) (E : MoriProgramRouteEvidence R) :
    MoriProgramRouteClosed R := by
  exact And.intro E.minimalModelClosed
    (And.intro E.canonicalModelClosed
      (And.intro E.logTerminalClosed E.abundanceConjectureClosed))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse