import canonicalLaneMathlib.Projection

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ThreeFoldWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse