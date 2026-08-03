import ThreeFoldsCanonicalLaneLean.ThreeFoldAdmissibleClass

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

def ThreeFoldWitnessClosed (O : ThreeFoldObject) : Prop :=
  O.smoothExceptTerminal ∧ O.QFactorial ∧ O.K_X_nef

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ThreeFoldWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse