import canonicalLaneMathlib.AdmissibleClass

/-!
# Minimal Model Program Package for 3-Folds
-/

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure MinimalModelProgramPackage where
  terminalModelExists : Prop
  qFactorialModelExists : Prop
  minimalModelHasNEQProperty : Prop
  terminationAfterFinitelyManyFlips : Prop

structure MinimalModelProgramEvidence (M : MinimalModelProgramPackage) where
  terminalModelExistsClosed : M.terminalModelExists
  qFactorialModelExistsClosed : M.qFactorialModelExists
  minimalModelHasNEQPropertyClosed : M.minimalModelHasNEQProperty
  terminationAfterFinitelyManyFlipsClosed : M.terminationAfterFinitelyManyFlips

def MinimalModelProgramClosed (M : MinimalModelProgramPackage) : Prop :=
  M.terminalModelExists ∧ M.qFactorialModelExists ∧ M.minimalModelHasNEQProperty ∧ M.terminationAfterFinitelyManyFlips

theorem minimal_model_program_closed_from_evidence (M : MinimalModelProgramPackage) (E : MinimalModelProgramEvidence M) :
    MinimalModelProgramClosed M := by
  exact And.intro E.terminalModelExistsClosed (And.intro E.qFactorialModelExistsClosed (And.intro E.minimalModelHasNEQPropertyClosed E.terminationAfterFinitelyManyFlipsClosed))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse