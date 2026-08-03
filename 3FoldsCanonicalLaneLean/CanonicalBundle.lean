import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ThreefoldsCanonicalLaneLean

structure CanonicalBundlePackage where
  X : Type
  canonicalSheaf : Type
  canonicalClass : Prop
  kodairaDimension : Prop
  
structure CanonicalBundleEvidence (K : CanonicalBundlePackage) where
  canonicalClassClosed : K.canonicalClass
  kodairaDimensionClosed : K.kodairaDimension

def CanonicalBundleClosed (K : CanonicalBundlePackage) : Prop :=
  K.canonicalClass ∧ K.kodairaDimension

theorem canonical_bundle_closed_from_evidence (K : CanonicalBundlePackage)
    (E : CanonicalBundleEvidence K) : CanonicalBundleClosed K := by
  exact And.intro E.canonicalClassClosed E.kodairaDimensionClosed

end ThreefoldsCanonicalLaneLean
end HautevilleHouse