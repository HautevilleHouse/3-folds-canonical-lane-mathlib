import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure ThreeFoldObject where
  variety : Type u
  topology : TopologicalSpace variety
  smoothExceptTerminal : Prop
  QFactorial : Prop
  K_X_nef : Prop

structure AdmissibleClass where
  object : ThreeFoldObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ThreeFoldWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse