import canonicalLaneMathlib.AdmissibleClass

/-!
# Hyperbolic Structure Package
-/

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure HyperbolicStructurePackage where
  cuspEnds : Prop
  volumeFinite : Prop
  hyperbolicityCondition : Prop
  mostowRigidity : Prop

structure HyperbolicStructureEvidence (H : HyperbolicStructurePackage) where
  cuspEndsClosed : H.cuspEnds
  volumeFiniteClosed : H.volumeFinite
  hyperbolicityConditionClosed : H.hyperbolicityCondition
  mostowRigidityClosed : H.mostowRigidity

def HyperbolicStructureClosed (H : HyperbolicStructurePackage) : Prop :=
  H.cuspEnds ∧ H.volumeFinite ∧ H.hyperbolicityCondition ∧ H.mostowRigidity

theorem hyperbolic_structure_closed_from_evidence
    (H : HyperbolicStructurePackage) (E : HyperbolicStructureEvidence H) :
    HyperbolicStructureClosed H := by
  exact And.intro E.cuspEndsClosed
    (And.intro E.volumeFiniteClosed
      (And.intro E.hyperbolicityConditionClosed E.mostowRigidityClosed))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse