import canonicalLaneMathlib.AdmissibleClass

/-!
# JSJ Decomposition Package
-/

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure JSJDecompositionPackage (G : GeometrizationTypesPackage) where
  toriCollection : Type u
  seifertPieces : Prop
  hyperbolicPieces : Prop
  graphStructure : Prop
  irreducibility : Prop

structure JSJDecompositionEvidence {G : GeometrizationTypesPackage}
    (J : JSJDecompositionPackage G) where
  toriCollectionClosed : J.toriCollection
  seifertPiecesClosed : J.seifertPieces
  hyperbolicPiecesClosed : J.hyperbolicPieces
  graphStructureClosed : J.graphStructure
  irreducibilityClosed : J.irreducibility

def JSJDecompositionClosed {G : GeometrizationTypesPackage}
    (J : JSJDecompositionPackage G) : Prop :=
  J.seifertPieces ∧ J.hyperbolicPieces ∧ J.graphStructure ∧ J.irreducibility

theorem jsj_decomposition_closed_from_evidence
    {G : GeometrizationTypesPackage} (J : JSJDecompositionPackage G)
    (E : JSJDecompositionEvidence J) : JSJDecompositionClosed J := by
  exact And.intro E.seifertPiecesClosed
    (And.intro E.hyperbolicPiecesClosed
      (And.intro E.graphStructureClosed E.irreducibilityClosed))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse