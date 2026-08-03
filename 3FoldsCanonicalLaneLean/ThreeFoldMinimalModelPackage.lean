import ThreeFoldsCanonicalLaneLean.ThreeFoldObject

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure MinimalModelPackage where
  nefCanonicalBundle : Prop
  finiteNumberOfFlips : Prop
  terminationOfFlips : Prop
  basePointFree : Prop
  abundanceConjecture : Prop

structure MinimalModelEvidence (M : MinimalModelPackage) where
  nefCanonicalBundleClosed : M.nefCanonicalBundle
  finiteNumberOfFlipsClosed : M.finiteNumberOfFlips
  terminationOfFlipsClosed : M.terminationOfFlips
  basePointFreeClosed : M.basePointFree
  abundanceConjectureClosed : M.abundanceConjecture

def MinimalModelClosed (M : MinimalModelPackage) : Prop :=
  M.nefCanonicalBundle ∧ M.finiteNumberOfFlips ∧ M.terminationOfFlips ∧ M.basePointFree ∧ M.abundanceConjecture

theorem minimal_model_closed_from_evidence (M : MinimalModelPackage) (E : MinimalModelEvidence M) :
    MinimalModelClosed M := by
  exact And.intro E.nefCanonicalBundleClosed
    (And.intro E.finiteNumberOfFlipsClosed
      (And.intro E.terminationOfFlipsClosed
        (And.intro E.basePointFreeClosed E.abundanceConjectureClosed)))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse