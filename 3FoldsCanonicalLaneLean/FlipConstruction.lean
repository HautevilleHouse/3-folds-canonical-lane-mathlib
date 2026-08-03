import canonicalLaneMathlib.AdmissibleClass

/-!
# Flip Construction Package for 3-Folds
-/

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure FlipConstructionPackage where
  flippingCurve : Type u
  flippingContracting : Prop
  flipExists : Prop
  flipFinite : Prop
  flipDoesNotIncreaseSingularities : Prop

structure FlipConstructionEvidence (F : FlipConstructionPackage) where
  flippingContractingClosed : F.flippingContracting
  flipExistsClosed : F.flipExists
  flipFiniteClosed : F.flipFinite
  flipDoesNotIncreaseSingularitiesClosed : F.flipDoesNotIncreaseSingularities

def FlipConstructionClosed (F : FlipConstructionPackage) : Prop :=
  F.flippingContracting ∧ F.flipExists ∧ F.flipFinite ∧ F.flipDoesNotIncreaseSingularities

theorem flip_construction_closed_from_evidence (F : FlipConstructionPackage) (E : FlipConstructionEvidence F) :
    FlipConstructionClosed F := by
  exact And.intro E.flippingContractingClosed (And.intro E.flipExistsClosed (And.intro E.flipFiniteClosed E.flipDoesNotIncreaseSingularitiesClosed))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse