import ThreeFoldsCanonicalLaneLean.MinimalModelPackage

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure TerminalClassificationPackage (A : AdmissibleClass) (M : MinimalModelPackage A) where
  terminalModel : Type u
  terminalMap : A.object.variety → terminalModel
  terminalQFactorial : Prop
  terminalKXnef : Prop
  uniqueness : Prop

structure TerminalClassificationEvidence (A : AdmissibleClass) (M : MinimalModelPackage A) (T : TerminalClassificationPackage A M) where
  terminalQFactorialClosed : T.terminalQFactorial
  terminalKXnefClosed : T.terminalKXnef
  uniquenessClosed : T.uniqueness

def TerminalClassificationClosed (A : AdmissibleClass) (M : MinimalModelPackage A) (T : TerminalClassificationPackage A M) : Prop :=
  T.terminalQFactorial ∧ T.terminalKXnef ∧ T.uniqueness

theorem terminal_classification_closed_from_evidence (A : AdmissibleClass) (M : MinimalModelPackage A) (T : TerminalClassificationPackage A M) (E : TerminalClassificationEvidence A M T) :
    TerminalClassificationClosed A M T := by
  exact And.intro E.terminalQFactorialClosed (And.intro E.terminalKXnefClosed E.uniquenessClosed)

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse