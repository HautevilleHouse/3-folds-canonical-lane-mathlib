import ThreeFoldsCanonicalLaneLean.ThreeFoldProofCertificate

namespace HautevilleHouse
namespace ThreeFoldsCanonicalLaneLean

structure ThreeFoldEvidenceTerms (C : ThreeFoldAnalyticCertificate) where
  terminalSingularityClosed : C.singularity.terminalType
  canonicalSingularityClosed : C.singularity.canonicalType
  logTerminalClosed : C.singularity.logTerminal
  resolutionExistsClosed : C.singularity.resolutionExists
  discrepancyControlledClosed : C.singularity.discrepancyControlled
  nefCanonicalBundleClosed : C.minimalModel.nefCanonicalBundle
  finiteFlipsClosed : C.minimalModel.finiteNumberOfFlips
  terminationFlipsClosed : C.minimalModel.terminationOfFlips
  basePointFreeClosed : C.minimalModel.basePointFree
  abundanceConjectureClosed : C.minimalModel.abundanceConjecture
  flipExistenceClosed : C.flipExistence
  flipTerminationClosed : C.flipTermination
  canonicalModelProducedClosed : C.canonicalModelProduced

def ThreeFoldAnalyticCertificate.evidenceTerms (C : ThreeFoldAnalyticCertificate) : ThreeFoldEvidenceTerms C :=
  {
    terminalSingularityClosed := C.singularityEvidence.terminalTypeClosed
    canonicalSingularityClosed := C.singularityEvidence.canonicalTypeClosed
    logTerminalClosed := C.singularityEvidence.logTerminalClosed
    resolutionExistsClosed := C.singularityEvidence.resolutionExistsClosed
    discrepancyControlledClosed := C.singularityEvidence.discrepancyControlledClosed
    nefCanonicalBundleClosed := C.minimalModelEvidence.nefCanonicalBundleClosed
    finiteFlipsClosed := C.minimalModelEvidence.finiteNumberOfFlipsClosed
    terminationFlipsClosed := C.minimalModelEvidence.terminationOfFlipsClosed
    basePointFreeClosed := C.minimalModelEvidence.basePointFreeClosed
    abundanceConjectureClosed := C.minimalModelEvidence.abundanceConjectureClosed
    flipExistenceClosed := C.flipExistenceClosed
    flipTerminationClosed := C.flipTerminationClosed
    canonicalModelProducedClosed := C.canonicalModelProducedClosed
  }

end ThreeFoldsCanonicalLaneLean
end HautevilleHouse