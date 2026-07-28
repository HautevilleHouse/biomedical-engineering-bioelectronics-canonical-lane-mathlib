import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BiomedicalEngineeringBioelectronicsCanonicalLaneLean

structure DiagnosticInferencePackage where
  sensorModel : Prop
  signalProcessing : Prop
  featureExtraction : Prop
  classificationAlgorithm : Prop
  diagnosticAccuracy : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  sensorModelClosed : D.sensorModel
  signalProcessingClosed : D.signalProcessing
  featureExtractionClosed : D.featureExtraction
  classificationAlgorithmClosed : D.classificationAlgorithm
  diagnosticAccuracyClosed : D.diagnosticAccuracy

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.sensorModel ∧ D.signalProcessing ∧ D.featureExtraction ∧ D.classificationAlgorithm ∧ D.diagnosticAccuracy

theorem diagnostic_inference_closed_from_evidence (D : DiagnosticInferencePackage)
    (E : DiagnosticInferenceEvidence D) : DiagnosticInferenceClosed D := by
  exact And.intro E.sensorModelClosed
    (And.intro E.signalProcessingClosed
      (And.intro E.featureExtractionClosed
        (And.intro E.classificationAlgorithmClosed E.diagnosticAccuracyClosed)))

end BiomedicalEngineeringBioelectronicsCanonicalLaneLean
end HautevilleHouse