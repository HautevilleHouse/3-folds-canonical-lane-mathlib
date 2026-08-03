import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure FlipPackage where
  flippingCurveExistence : Prop
  flipExists : Prop
  flopExists : Prop
  divisorialContraction : Prop

structure FlipEvidence (F : FlipPackage) where
  flippingCurveExistenceClosed : F.flippingCurveExistence
  flipExistsClosed : F.flipExists
  flopExistsClosed : F.flopExists
  divisorialContractionClosed : F.divisorialContraction

def FlipClosed (F : FlipPackage) : Prop :=
  F.flippingCurveExistence ∧ F.flipExists ∧ F.flopExists ∧ F.divisorialContraction

theorem flip_closed_from_evidence (F : FlipPackage) (E : FlipEvidence F) :
    FlipClosed F := by
  exact And.intro E.flippingCurveExistenceClosed (And.intro E.flipExistsClosed (And.intro E.flopExistsClosed E.divisorialContractionClosed))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse