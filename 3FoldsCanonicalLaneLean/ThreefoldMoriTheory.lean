import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure MoriTheoryPackage where
  coneTheorem : Prop
  contractionTheorem : Prop
  rationalityTheorem : Prop
  basepointFree : Prop

structure MoriTheoryEvidence (M : MoriTheoryPackage) where
  coneTheoremClosed : M.coneTheorem
  contractionTheoremClosed : M.contractionTheorem
  rationalityTheoremClosed : M.rationalityTheorem
  basepointFreeClosed : M.basepointFree

def MoriTheoryClosed (M : MoriTheoryPackage) : Prop :=
  M.coneTheorem ∧ M.contractionTheorem ∧ M.rationalityTheorem ∧ M.basepointFree

theorem mori_theory_closed_from_evidence (M : MoriTheoryPackage) (E : MoriTheoryEvidence M) :
    MoriTheoryClosed M := by
  exact And.intro E.coneTheoremClosed (And.intro E.contractionTheoremClosed (And.intro E.rationalityTheoremClosed E.basepointFreeClosed))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse