import canonicalLaneMathlib.MinimalModelPackage

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure MinimalModelPackage (V : ThreeFoldAdmittedObject) where
  birationalMap : Prop
  contraction : Prop
  flipExists : Prop
  termination : Prop

structure MinimalModelEvidence {V : ThreeFoldAdmittedObject} (M : MinimalModelPackage V) where
  birationalMapClosed : M.birationalMap
  contractionClosed : M.contraction
  flipExistsClosed : M.flipExists
  terminationClosed : M.termination

def MinimalModelClosed {V : ThreeFoldAdmittedObject} (M : MinimalModelPackage V) : Prop :=
  M.birationalMap ∧ M.contraction ∧ M.flipExists ∧ M.termination

theorem minimal_model_closed_from_evidence
    {V : ThreeFoldAdmittedObject} (M : MinimalModelPackage V) (E : MinimalModelEvidence M) :
    MinimalModelClosed M := by
  exact And.intro E.birationalMapClosed
    (And.intro E.contractionClosed
      (And.intro E.flipExistsClosed E.terminationClosed))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse