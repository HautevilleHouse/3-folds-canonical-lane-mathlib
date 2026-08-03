import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure CanonicalBundlePackage where
  threefold : Type u
  canonicalSheaf : Type v
  kodairaDimension : Prop
  plurigenera : Prop
  birationalInvariance : Prop

structure CanonicalBundleEvidence (C : CanonicalBundlePackage) where
  kodairaDimensionClosed : C.kodairaDimension
  plurigeneraClosed : C.plurigenera
  birationalInvarianceClosed : C.birationalInvariance

def CanonicalBundleClosed (C : CanonicalBundlePackage) : Prop :=
  C.kodairaDimension ∧ C.plurigenera ∧ C.birationalInvariance

theorem canonical_bundle_closed_from_evidence (C : CanonicalBundlePackage) (E : CanonicalBundleEvidence C) :
    CanonicalBundleClosed C := by
  exact And.intro E.kodairaDimensionClosed (And.intro E.plurigeneraClosed E.birationalInvarianceClosed)

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse