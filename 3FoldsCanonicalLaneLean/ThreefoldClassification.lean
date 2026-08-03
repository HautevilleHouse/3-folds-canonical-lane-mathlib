import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure ClassificationPackage where
  generalType : Prop
  specialType : Prop
  rationalCurves : Prop
  fanoThreefolds : Prop

structure ClassificationEvidence (C : ClassificationPackage) where
  generalTypeClosed : C.generalType
  specialTypeClosed : C.specialType
  rationalCurvesClosed : C.rationalCurves
  fanoThreefoldsClosed : C.fanoThreefolds

def ClassificationClosed (C : ClassificationPackage) : Prop :=
  C.generalType ∧ C.specialType ∧ C.rationalCurves ∧ C.fanoThreefolds

theorem classification_closed_from_evidence (C : ClassificationPackage) (E : ClassificationEvidence C) :
    ClassificationClosed C := by
  exact And.intro E.generalTypeClosed (And.intro E.specialTypeClosed (And.intro E.rationalCurvesClosed E.fanoThreefoldsClosed))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse