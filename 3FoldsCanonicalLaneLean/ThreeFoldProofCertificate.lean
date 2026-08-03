import ThreeFoldsCanonicalLaneLean.SingularityPackage
import ThreeFoldsCanonicalLaneLean.MinimalModelPackage

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure ThreeFoldAnalyticCertificate where
  singularity : SingularityPackage
  singularityEvidence : SingularityEvidence singularity
  minimalModel : MinimalModelPackage
  minimalModelEvidence : MinimalModelEvidence minimalModel
  flipExistence : Prop
  flipTermination : Prop
  flipExistenceClosed : flipExistence
  flipTerminationClosed : flipTermination
  canonicalModelProduced : Prop
  canonicalModelProducedClosed : canonicalModelProduced
  threeFoldWitness : ThreeFoldWitnessClosed (AdmissibleClass.object)

def ThreeFoldCertificateClosed (C : ThreeFoldAnalyticCertificate) : Prop :=
  SingularityClosed C.singularity ∧
  MinimalModelClosed C.minimalModel ∧
  C.flipExistence ∧ C.flipTermination ∧ C.canonicalModelProduced ∧
  ThreeFoldWitnessClosed (AdmissibleClass.object)

theorem three_fold_certificate_closed_from_evidence (C : ThreeFoldAnalyticCertificate) :
    ThreeFoldCertificateClosed C := by
  exact And.intro (singularity_closed_from_evidence C.singularity C.singularityEvidence)
    (And.intro (minimal_model_closed_from_evidence C.minimalModel C.minimalModelEvidence)
      (And.intro C.flipExistenceClosed
        (And.intro C.flipTerminationClosed
          (And.intro C.canonicalModelProducedClosed C.threeFoldWitness))))

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse