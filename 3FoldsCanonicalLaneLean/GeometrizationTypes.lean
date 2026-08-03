import canonicalLaneMathlib.AdmissibleClass

/-!
# Geometrization Types Package
-/

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure GeometrizationTypesPackage where
  spherical : Prop
  euclidean : Prop
  hyperbolic : Prop
  seifertFibered : Prop
  solvable : Prop
  nilpotent : Prop
  SL2R : Prop
  H2xR : Prop

structure GeometrizationTypesEvidence (G : GeometrizationTypesPackage) where
  sphericalClosed : G.spherical
  euclideanClosed : G.euclidean
  hyperbolicClosed : G.hyperbolic
  seifertFiberedClosed : G.seifertFibered
  solvableClosed : G.solvable
  nilpotentClosed : G.nilpotent
  SL2RClosed : G.SL2R
  H2xRClosed : G.H2xR

def GeometrizationTypesClosed (G : GeometrizationTypesPackage) : Prop :=
  G.spherical ∧ G.euclidean ∧ G.hyperbolic ∧ G.seifertFibered ∧
  G.solvable ∧ G.nilpotent ∧ G.SL2R ∧ G.H2xR

theorem geometrization_types_closed_from_evidence
    (G : GeometrizationTypesPackage) (E : GeometrizationTypesEvidence G) :
    GeometrizationTypesClosed G := by
  exact And.intro E.sphericalClosed
    (And.intro E.euclideanClosed
      (And.intro E.hyperbolicClosed
        (And.intro E.seifertFiberedClosed
          (And.intro E.solvableClosed
            (And.intro E.nilpotentClosed
              (And.intro E.SL2RClosed E.H2xRClosed))))))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse