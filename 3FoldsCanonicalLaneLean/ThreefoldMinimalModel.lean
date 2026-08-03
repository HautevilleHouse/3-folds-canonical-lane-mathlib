import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure MinimalModelPackage where
  terminalModel : Prop
  nefCanonicalBundle : Prop
  finiteSequenceOfFlips : Prop
  termination : Prop

structure MinimalModelEvidence (M : MinimalModelPackage) where
  terminalModelClosed : M.terminalModel
  nefCanonicalBundleClosed : M.nefCanonicalBundle
  finiteSequenceOfFlipsClosed : M.finiteSequenceOfFlips
  terminationClosed : M.termination

def MinimalModelClosed (M : MinimalModelPackage) : Prop :=
  M.terminalModel ∧ M.nefCanonicalBundle ∧ M.finiteSequenceOfFlips ∧ M.termination

theorem minimal_model_closed_from_evidence (M : MinimalModelPackage) (E : MinimalModelEvidence M) :
    MinimalModelClosed M := by
  exact And.intro E.terminalModelClosed (And.intro E.nefCanonicalBundleClosed (And.intro E.finiteSequenceOfFlipsClosed E.terminationClosed))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse