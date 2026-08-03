import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure AdmissibleClass where
  object : ThreeFoldAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ThreeFoldWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse