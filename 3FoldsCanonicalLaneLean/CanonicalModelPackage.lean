import canonicalLaneMathlib.CanonicalModelPackage

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure CanonicalModelPackage (V : ThreeFoldAdmittedObject) where
  canonicalModel : Prop
  logCanonical : Prop
  abundance : Prop
  nef : Prop

structure CanonicalModelEvidence {V : ThreeFoldAdmittedObject} (C : CanonicalModelPackage V) where
  canonicalModelClosed : C.canonicalModel
  logCanonicalClosed : C.logCanonical
  abundanceClosed : C.abundance
  nefClosed : C.nef

def CanonicalModelClosed {V : ThreeFoldAdmittedObject} (C : CanonicalModelPackage V) : Prop :=
  C.canonicalModel ∧ C.logCanonical ∧ C.abundance ∧ C.nef

theorem canonical_model_closed_from_evidence
    {V : ThreeFoldAdmittedObject} (C : CanonicalModelPackage V) (E : CanonicalModelEvidence C) :
    CanonicalModelClosed C := by
  exact And.intro E.canonicalModelClosed
    (And.intro E.logCanonicalClosed
      (And.intro E.abundanceClosed E.nefClosed))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse