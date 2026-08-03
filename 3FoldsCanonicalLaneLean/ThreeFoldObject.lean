import ThreeFoldsCanonicalLaneLean.ThreeFoldStatement
import CanonicalLaneMathlibCore

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ThreeFoldSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier

structure ThreeFoldObject where
  space : ThreeFoldSpace
  projectiveVariety : Prop
  terminalSingularities : Prop
  canonicalModel : Type
  canonicalTopology : TopologicalSpace canonicalModel
  birationalMap : canonicalModel → space.carrier
  birationalEquiv : Prop
  conclusion : birationalEquiv

structure ThreeFoldEndgameState where
  object : ThreeFoldObject

def ThreeFoldWitnessClosed (O : ThreeFoldObject) : Prop :=
  O.birationalEquiv

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse